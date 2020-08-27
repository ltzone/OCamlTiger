module A = Ast.Absyn;;
module T = Types;;
module S = Ast.Symbol;;
module E = Errormsg;;

type venv = Env.enventry Ast.Symbol.table
type tenv = T.ty Ast.Symbol.table



type expty = {exp: Translate.exp; ty: Types.ty}

(* let transVar venv tenv v: expty =
  {
    exp=();
    ty=NIL
  } *)



let checkInt {exp;ty} pos : Translate.exp =
  let _ = exp in
    match ty with
    | T.INT -> ()
    | _ -> Errormsg.error pos "integer required"

let transExp venv tenv e : expty =
  let _ = venv in
  let _ = tenv in
  let rec trexp = function
    | A.NilExp -> {exp=(); ty=T.NIL}
    | A.IntExp _ -> {exp=(); ty=T.INT}
    | A.StringExp _ -> {exp=(); ty=T.STRING}
    | A.OpExp{left;oper=_;right;pos} ->
        checkInt (trexp left) pos;
        checkInt (trexp right) pos;
        {exp=(); ty=T.INT}
    | A.CallExp {func; args; pos} ->
        (match S.look (venv, func) with
        | None -> E.error pos ("undefined function " ^ S.name func);
                  {exp=();ty=T.NIL}
        | Some (Env.VarEntry {ty=_}) -> 
                  E.error pos (S.name func ^ " is not a function");
                  {exp=();ty=T.NIL}
        | Some (Env.FunEntry {formals; result}) ->
                  let rec iter_args (arg_tys:T.ty list) (args:A.exp list) =
                    match arg_tys, args with
                    | ty::arg_tys', arg::args'
                        -> let {exp=_;ty=arg_ty} = trexp arg in 
                          if (ty = arg_ty) then iter_args arg_tys' args'
                                         else E.error pos (S.name func ^ " has wrong argument type")
                    | _ -> E.error pos (S.name func ^ " has incorrect number of arguments") in
                  iter_args formals args;
                  {exp=();ty=result}

        )
    | _ -> assert false
  in trexp e




(*
val transDec : venv * tenv * Ast.Absyn.dec -> venv * tenv
val transTy :         tenv * Ast.Absyn.ty -> expty

val transProg : Ast.Absyn.exp -> unit
*)