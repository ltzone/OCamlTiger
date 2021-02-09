type venv = Env.enventry Ast.Symbol.table
type tenv = Ast.Types.ty Ast.Symbol.table

type expty = {exp: Translate.exp; ty: Ast.Types.ty}

val transProg: Ast.Absyn.exp -> unit 


module FindEscape : sig
  val findEscape : Ast.Absyn.exp -> unit
end