(* type access *)
type enventry = VarEntry of {ty : Types.ty}
              | FunEntry of {formals: Types.ty list; result: Types.ty}

val base_tenv: Types.ty Ast.Symbol.table
val base_venv: enventry Ast.Symbol.table
