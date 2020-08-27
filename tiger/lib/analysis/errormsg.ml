let anyErrors = ref false
let fileName = ref ""
let lineNum = ref 1
let linePos = ref [1]
let sourceStream = ref stdin 

let reset() = (anyErrors:=false;
    fileName:="";
    lineNum:=1;
    linePos:=[1];
    sourceStream:=stdin)

exception Error

let error pos (msg:string) =
    let rec look = function
    | (a::rest,n) ->
        if a<pos then List.iter print_string [":";
                    string_of_int n;
                    ".";
                    string_of_int (pos-a)]
                else look(rest,n-1)
    | _ -> print_string "0.0"
      in anyErrors := true;
  print_string (!fileName);
  look(!linePos,!lineNum);
  print_string ":";
  print_string msg;
  print_string "\n"

let impossible msg =
    (List.iter print_string ["Error: Compiler bug: ";msg;"\n"];
      flush stdout;
      raise Error)

