open Core;;

let print_position outx lexbuf =
  let open Lexing in
  let pos = lexbuf.lex_curr_p in
  fprintf outx "%s:%d:%d:" pos.pos_fname
    pos.pos_lnum (pos.pos_cnum - pos.pos_bol + 1)

let parse_with_error lexbuf =
  let open Frontend in
  try Parser.program Lexer.read lexbuf with
  | Lexer.SyntaxError msg ->
    (* fprintf stderr "%a: %s\n" print_position lexbuf msg; *)
    print_position stdout lexbuf;
    print_endline msg;
    None
  | Parser.Error ->
    (* fprintf stderr "%a: syntax error\n" print_position lexbuf; *)
    print_position stdout lexbuf;
    print_endline "parse syntax error";
    None
    (* exit (-1) *)

let parse_file filename = 
  let inx = In_channel.create filename in
  let lexbuf = Lexing.from_channel inx in
  lexbuf.lex_curr_p <- { lexbuf.lex_curr_p with pos_fname = filename };
  let res = parse_with_error lexbuf in
  In_channel.close inx; res


let semant_check filename =
  let parse_res = parse_file filename in
  match parse_res with
  | None -> ()
  | Some parse_res ->
  Analysis.Semant.transProg parse_res

let () = 
  (for i = 1 to 49 do
    print_string "--------test ";
    print_string (string_of_int i);
    print_endline "-------------";
    semant_check ("testcases/src_test/test"^(string_of_int i)^".tig");
    ()
  done);
  print_endline "------test of queens--------";
  semant_check ("testcases/queens.tig");
  print_endline "------test of merge---------";
  semant_check ("testcases/merge.tig")