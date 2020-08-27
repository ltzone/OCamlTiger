(* type access *)
module T = Types;;
type enventry = VarEntry of {ty : T.ty}
              | FunEntry of {formals: T.ty list; result: T.ty}

let base_tenv: T.ty Ast.Symbol.table =
  let open Ast.Symbol in
    empty

let base_venv: enventry Ast.Symbol.table = 
let open Ast.Symbol in
let stand_lib = 
  let open Types in
  [
    ("print", FunEntry {formals=[STRING];result=UNIT});
    ("flush", FunEntry {formals=[];result=UNIT});
    ("getchar",FunEntry {formals=[];result=STRING});    
    ("ord",FunEntry {formals=[STRING];result=INT});
    ("chr",FunEntry {formals=[INT];result=STRING});
    ("size",FunEntry {formals=[STRING];result=INT});
    ("substring",FunEntry {formals=[STRING;INT;INT];result=STRING});
    ("concat",FunEntry {formals=[STRING;STRING];result=STRING});
    ("not",FunEntry {formals=[INT];result=INT});
    ("exit",FunEntry {formals=[INT];result=UNIT})
  ] in
  let update_table tab elem =
    enter (tab, symbol (fst elem), snd elem) in
  List.fold_left update_table empty stand_lib
