module T = Ast.Types

(* type access *)
type enventry = VarEntry of { ty : T.ty;            (** for type check *)
                              access: Translate.access  (** for frame allocation *)
                            }
              | FunEntry of { formals: T.ty list;   (** for type check *)
                              result: T.ty;         (** for type check *)
                              level: Translate.level;   (** for frame allocation *)
                              label: Ast.Temp.label         (** frame name *)
                            }

val base_tenv: T.ty Ast.Symbol.table
val base_venv: enventry Ast.Symbol.table
