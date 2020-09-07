type venv = Env.enventry Ast.Symbol.table
type tenv = Types.ty Ast.Symbol.table



type expty = {exp: Translate.exp; ty: Types.ty}

val transExp : venv -> tenv -> Ast.Absyn.exp -> expty

val transProg: Ast.Absyn.exp -> unit 
(* val transVar : venv -> tenv -> Ast.Absyn.var -> expty
val transDec : venv -> tenv -> Ast.Absyn.dec -> venv * tenv
val transTy :          tenv -> Ast.Absyn.ty -> expty

val transProg : Ast.Absyn.exp -> unit *)