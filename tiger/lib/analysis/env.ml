(* type access *)
module T = Ast.Types;;
module Temp = Ast.Temp;;

type enventry = VarEntry of { ty : T.ty;            (** for type check *)
                              access: Translate.access  (** for frame allocation *)
                            }
              | FunEntry of { formals: T.ty list;   (** for type check *)
                              result: T.ty;         (** for type check *)
                              level: Translate.level;   (** for frame allocation *)
                              label: Temp.label         (** frame name *)
                            }

let base_tenv: T.ty Ast.Symbol.table =
  let open Ast.Symbol in
  let stand_lib = 
    [
      ("int", T.INT);
      ("string", T.STRING);
      ("unit",T.UNIT);    
      ("nil",T.NIL);
    ] in
    let update_table tab elem =
      enter (tab, symbol (fst elem), snd elem) in
    List.fold_left update_table empty stand_lib

let base_venv: enventry Ast.Symbol.table = 
let open Ast.Symbol in
let stand_lib = 
  let open T in
  [
    ("print", FunEntry { formals=[STRING]; result=UNIT;
                         level=Translate.outermost;
                         label=Temp.newlabel()});
    ("flush", FunEntry{ formals=[];result=UNIT;
                        level=Translate.outermost;
                        label=Temp.newlabel()});
    ("getchar",FunEntry { formals=[];result=STRING;
                          level=Translate.outermost;
                          label=Temp.newlabel()});
    ("ord",FunEntry {formals=[STRING];result=INT;
                     level=Translate.outermost;
                     label=Temp.newlabel()});
    ("chr",FunEntry {formals=[INT];result=STRING;
                     level=Translate.outermost;
                     label=Temp.newlabel()});
    ("size",FunEntry {formals=[STRING];result=INT;
                      level=Translate.outermost;
                      label=Temp.newlabel()});
    ("substring",FunEntry {formals=[STRING;INT;INT];result=STRING;
                           level=Translate.outermost;
                           label=Temp.newlabel()});
    ("concat",FunEntry {formals=[STRING;STRING];result=STRING;
                        level=Translate.outermost;
                        label=Temp.newlabel()});
    ("not",FunEntry {formals=[INT];result=INT;
                     level=Translate.outermost;
                     label=Temp.newlabel()});
    ("exit",FunEntry {formals=[INT];result=UNIT;
                      level=Translate.outermost;
                      label=Temp.newlabel()});
  ] in
  let update_table tab elem =
    enter (tab, symbol (fst elem), snd elem) in
  List.fold_left update_table empty stand_lib
