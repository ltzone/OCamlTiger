{
open Lexing
open Slfun3

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
  | "print" { PRINT }
  | int    { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | id     { ID (Lexing.lexeme lexbuf) }
  | white  { read lexbuf }  (* skip blanks *)
  | newline { next_line lexbuf;read lexbuf }
  | ":="    { ASSIGN }
  | '*'     { TIMES }
  | ';'     { SEMICOLON }
  | ')'     { RPAREN }
  | '+'     { PLUS }
  | '-'     { MINUS }
  | '('     { LPAREN }
  | '/'     { DIV }
  | ','     { COMMA }
  | _       { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }
  | eof     { EOF }