(* type access *)
type enventry = VarEntry of { ty : Types.ty;            (** for type check *)
                              access: Translate.access  (** for frame allocation *)
                            }
              | FunEntry of { formals: Types.ty list;   (** for type check *)
                              result: Types.ty;         (** for type check *)
                              level: Translate.level;   (** for frame allocation *)
                              label: Temp.label         (** frame name *)
                            }

val base_tenv: Types.ty Ast.Symbol.table
val base_venv: enventry Ast.Symbol.table
