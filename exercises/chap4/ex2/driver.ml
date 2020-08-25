open Core;;
module Parser = Slfun2;;

let emptytable : string -> int =
  fun j -> raise (Failure ("uninitialized var: "^ j))

let print_position outx lexbuf =
  let open Lexing in
  let pos = lexbuf.lex_curr_p in
  fprintf outx "%s:%d:%d" pos.pos_fname
    pos.pos_lnum (pos.pos_cnum - pos.pos_bol + 1)

let parse_with_error lexbuf =
  try Parser.program Lexer.read lexbuf with
  | Lexer.SyntaxError msg ->
    fprintf stderr "%a: %s\n" print_position lexbuf msg
  | Parser.Error ->
    fprintf stderr "%a: syntax error\n" print_position lexbuf
    (* exit (-1) *)

let parse_file filename = 
  let inx = In_channel.create filename in
  let lexbuf = Lexing.from_channel inx in
  lexbuf.lex_curr_p <- { lexbuf.lex_curr_p with pos_fname = filename };
  let res = parse_with_error lexbuf in
  In_channel.close inx; res

let () =  parse_file "test.int"