{
open Lexing
open Parser

exception SyntaxError of string

let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }
}

let digit = ['0'-'9']
let int = digit digit*
let white = [' ' '\t']+
let newline = '\r' | '\n' | "\r\n"
let id = ['a'-'z' 'A'-'Z'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*

rule read =
  parse
  | int    { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | id     { ID (Lexing.lexeme lexbuf) }
  | white  { read lexbuf }  (* skip blanks *)
  | newline { next_line lexbuf;read lexbuf }
  | '*'     { TIMES }
  | ';'     { SEMICOLON }
  | ')'     { RPAREN }
  | ']'     { RBRACK }
  | '}'     { RBRACE }
  | '+'     { PLUS }
  | '|'     { OR }
  | '-'     { MINUS }
  | '<'     { LT }
  | '('     { LPAREN }
  | '['     { LBRACK }
  | '{'     { LBRACE }
  | '>'     { GT }
  | '='     { EQ }
  | '.'     { DOT }
  | '/'     { DIVIDE }
  | ','     { COMMA }
  | ':'     { COLON }
  | '&'     { AND }
  | "<="    { LE }
  | "!="    { NEQ }
  | ">="    { GE }
  | ":="    { ASSIGN }
  | "while" { WHILE }
  | "var"   { VAR }
  | "type"  { TYPE }
  | "to"    { TO }
  | "then"  { THEN }
  | "of"    { OF }
  | "nil"   { NIL }
  | "let"   { LET }
  | "in"    { IN }
  | "if"    { IF }
  | "function"
            { FUNCTION }
  | "for"   { FOR }
  | "end"   { END }
  | "else"  { ELSE }
  | "do"    { DO }
  | "break" { BREAK }
  | "array" { ARRAY }
  | '"'     { read_string lexbuf}
  | "/*"    { read_comment lexbuf}
  | _       { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
  | eof     { EOF }

and read_string buf =
  parse
  | '"'       { STRING (Buffer.contents buf) }
  | '\\' '/'  { Buffer.add_char buf '/'; read_string buf lexbuf }
  | '\\' '\\' { Buffer.add_char buf '\\'; read_string buf lexbuf }
  | '\\' 'b'  { Buffer.add_char buf '\b'; read_string buf lexbuf }
  | '\\' 'f'  { Buffer.add_char buf '\012'; read_string buf lexbuf }
  | '\\' 'n'  { Buffer.add_char buf '\n'; read_string buf lexbuf }
  | '\\' 'r'  { Buffer.add_char buf '\r'; read_string buf lexbuf }
  | '\\' 't'  { Buffer.add_char buf '\t'; read_string buf lexbuf }
  | [^ '"' '\\']+
    { Buffer.add_string buf (Lexing.lexeme lexbuf);
      read_string buf lexbuf
    }
  | _ { raise (SyntaxError ("Illegal string character: " ^ Lexing.lexeme lexbuf)) }
  | eof { raise (SyntaxError ("String is not terminated")) }

and read_comment =
  parse
  | '*' '/'   { read lexbuf }
  | _ { read_comment lexbuf }
  | eof { raise (SyntaxError ("Comment is not terminated")) }