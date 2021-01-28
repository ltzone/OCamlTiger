type venv = Env.enventry Ast.Symbol.table
type tenv = Types.ty Ast.Symbol.table

type expty = {exp: Translate.exp; ty: Types.ty}

val transProg: Ast.Absyn.exp -> unit 
