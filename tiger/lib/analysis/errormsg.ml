let anyErrors = ref false
let sourceStream = ref stdin 

let reset() = (anyErrors:=false;
    sourceStream:=stdin)

exception Error

let error (pos:Lexing.position) (msg:string) =
    let look (lnum,cnum) =
                 List.iter print_string [":";
                    string_of_int lnum;
                    ":";
                    string_of_int cnum]
      in anyErrors := true;
  print_string (pos.pos_fname);
  look(pos.pos_lnum,pos.pos_cnum-pos.pos_bol);
  print_string ":";
  print_string msg;
  print_string "\n"

let impossible msg =
    (List.iter print_string ["Error: Compiler bug: ";msg;"\n"];
      flush stdout;
      raise Error)

