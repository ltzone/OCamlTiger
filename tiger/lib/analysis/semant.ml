module A = Ast.Absyn;;
module T = Types;;
module S = Ast.Symbol;;
module E = Errormsg;;
module TS = Translate;;
module TP = Temp;;

type venv = Env.enventry Ast.Symbol.table
type tenv = T.ty Ast.Symbol.table

type expty = {exp: Translate.exp; ty: Types.ty}

type loopenv = IsLoop

let checkDupFun fundeclis =
  let walk_lis venv
    ({name;params=_;result=_;body=_;pos}:A.fundec) =
    match S.look (venv, name) with
    | None ->  S.enter (venv,name,())
    | Some _ -> E.error pos ("Same function name [" ^ S.name name ^ "] in recursive declarations");venv in
  let _ = List.fold_left walk_lis S.empty fundeclis in ()

let checkDupTy tydeclis =
  let walk_lis venv
    ({name;ty=_;pos}:A.typedec) =
    match S.look (venv, name) with
    | None ->  S.enter (venv,name,())
    | Some _ -> E.error pos ("Same type name [" ^ S.name name ^ "] in recursive declarations");venv in
  let _ = List.fold_left walk_lis S.empty tydeclis in ()

let checkInt {exp;ty} pos : Translate.exp =
  let _ = exp in
    match ty with
    | T.INT -> ()
    | _ -> Errormsg.error pos "integer required"

let real_type = function
  | Some (T.NAME (_, real_ty)) ->  !real_ty
  | other -> other

let ty_cmp ty arg_ty =
  (* T.print_ty_opt (real_type (Some ty)); *)
  (* T.print_ty_opt (real_type (Some arg_ty)); *)
  let res = (T.ty_check_opt (real_type (Some ty)) (real_type (Some arg_ty)) || arg_ty = T.NIL) in
  (* (print_endline (string_of_bool res)); *)
   res

let lookType tenv ty_name pos = 
  let ty = real_type (S.look (tenv, ty_name)) in
  match ty with
  | None -> E.error pos ("undefined type name " ^ S.name ty_name);T.NIL
  | Some ty -> ty

let rec transExp (lv:TS.level) venv tenv ?(isloop:loopenv option) (e:A.exp) : expty =
  let rec trexp = function
  (* a quick function to traverse exp within same env *)
    | A.NilExp -> {exp=(); ty=T.NIL}
    | A.IntExp _ -> {exp=(); ty=T.INT}
    | A.StringExp _ -> {exp=(); ty=T.STRING}
    | A.VarExp var -> transVar lv venv tenv var
    | A.OpExp{left;oper;right;pos} ->
        (match oper with
        | EqOp | NeqOp ->
          (let {exp=_;ty=ty1} = trexp left in
          let {exp=_;ty=ty2} = trexp right in
          if (ty1=ty2 || ty1 =T.NIL || ty2 = T.NIL)
            then {exp=();ty=T.INT}
            else (E.error pos ("uncomparable types"); {exp=();ty=T.NIL}))
        | _ ->
          checkInt (trexp left) pos;
          checkInt (trexp right) pos;
          {exp=(); ty=T.INT})
    | A.CallExp {func; args; pos} ->
        (match S.look (venv, func) with
        | None -> E.error pos ("undefined function " ^ S.name func);
                  {exp=();ty=T.NIL}
        | Some (Env.VarEntry {ty=_; access=_}) -> 
                  E.error pos (S.name func ^ " is not a function");
                  {exp=();ty=T.NIL}
        | Some (Env.FunEntry {formals; result; level=_; label=_}) ->
                  let rec iter_args (arg_tys:T.ty list) (args:A.exp list) =
                    match arg_tys, args with
                    | ty::arg_tys', arg::args'
                        -> let {exp=_;ty=arg_ty} = trexp arg in 
                          if (ty_cmp ty arg_ty) then iter_args arg_tys' args'
                                         else E.error pos (S.name func ^ " has wrong argument type")
                    | [], [] -> ()
                    | _ -> E.error pos (S.name func ^ " has incorrect number of arguments") in
                  iter_args formals args;
                  {exp=();ty=result}
        )
    | A.RecordExp {fields;typ=type_id;pos} ->
        (
          let ty = lookType tenv type_id pos in
          (match ty with
            | T.RECORD (fty_list,_) -> 
                let rec iter_field field_tys fields =
                  match field_tys, fields with
                  | (sym1,ty)::field_tys', (sym2,f,pos')::fields'
                      -> let {exp=_;ty=arg_ty} = trexp f in 
                        if (ty_cmp ty arg_ty)
                          then (if sym1=sym2 then iter_field field_tys' fields'
                          else E.error pos' ("Wrong field name of " ^ S.name sym2))
                          else E.error pos' ("Wrong field type of " ^ S.name sym2)
                  | [], [] -> ()
                  | _ -> E.error pos ("Field number mismatches") in
                iter_field fty_list fields;
                {exp=();ty=ty}
            | _ -> E.error pos (S.name type_id ^ " is not a record type");
            {exp=();ty=T.NIL})
        )
    | A.SeqExp [] -> {exp=();ty=T.UNIT}
    | A.SeqExp [(exp,_)] -> trexp exp
    | A.SeqExp ((exp,_)::seq') ->
        let {exp=_;ty=_} = trexp exp in
          trexp (A.SeqExp seq')
          (* (match exp_ty with *)
          (* | T.UNIT -> trexp (A.SeqExp seq') *)
          (* | _ -> E.error pos ("Expression not a unit type");{exp=();ty=T.NIL}) *)
    | A.AssignExp {var;exp;pos} ->
        let {exp=_;ty=exp_ty} = trexp exp in
        let {exp=_;ty=var_ty} = transVar lv venv tenv var in
          if (exp_ty = var_ty || exp_ty = T.NIL) then {exp=();ty=T.UNIT}
          else (E.error pos ("Assignment type fails to match");{exp=();ty=T.UNIT})
    | A.IfExp {test; then'; else'=None; pos} (* todo: and/or *) ->
        let {exp=_;ty=test_ty} = trexp test in
        if test_ty = T.INT then
        ( let {exp=_;ty=then_ty} = trexp then' in
          if then_ty = T.UNIT then {exp=();ty=T.UNIT}
          else (E.error pos ("Branch has invalid type, expected unit");
                {exp=();ty=T.NIL})
        )
        else (E.error pos ("Condition has invalid type");{exp=();ty=T.NIL})
    | A.IfExp {test; then'; else'=Some else'; pos} ->
        let {exp=_;ty=test_ty} = trexp test in
        if test_ty = T.INT then
        ( let {exp=_;ty=then_ty} = trexp then' in
          let {exp=_;ty=else_ty} = trexp else' in
          (* if then_ty = else_ty  *)
          if ty_cmp then_ty else_ty
          then {exp=();ty=then_ty}
          else (E.error pos ("Two Branches have different type");
                {exp=();ty=T.NIL})
        )
        else (E.error pos ("Condition has invalid type");{exp=();ty=T.NIL})
    | A.WhileExp {test; body; pos} ->
        let {exp=_;ty=test_ty} = trexp test in
          if test_ty = T.INT then
          ( let {exp=_;ty=body_ty} = transExp lv venv tenv ~isloop:IsLoop body in
            if body_ty = T.UNIT then
              {exp=();ty=body_ty}
            else (E.error pos ("Loop body has invalid type");{exp=();ty=T.NIL})
          )
          else (E.error pos ("Condition has invalid type");{exp=();ty=T.NIL})
    | A.ForExp {var; escape; lo; hi; body; pos} ->
        let {exp=_;ty=lo_ty} = trexp lo in
        let {exp=_;ty=hi_ty} = trexp hi in
          (match lo_ty, hi_ty with
          | T.INT, T.INT -> 
              let {exp=_;ty=body_ty} =
                transExp lv
                  (S.enter (venv,var,VarEntry {ty=T.INT;access=TS.allocLocal lv escape})) 
                  tenv ~isloop:IsLoop body in
              {exp=();ty=body_ty}
          | _ -> E.error pos "illegal bounds"; {exp=();ty=T.NIL})
    | A.BreakExp pos -> (match isloop with
                        | Some IsLoop -> {exp=();ty=T.UNIT}
                        | None -> E.error pos "illegal break"; {exp=();ty=T.NIL})
    | A.ArrayExp {typ; size; init; pos} ->
        let arty = lookType tenv typ pos in (
          let {exp=_;ty=init_ty} = trexp init in
          let {exp=_;ty=size_ty} = trexp size in
          if size_ty = T.INT then
          match arty with
          | T.ARRAY (elm_ty, _) -> 
              if (real_type (Some elm_ty) = real_type (Some init_ty)) then
               {exp=();ty=arty} 
               (* Here we should pass the original type instead of creating a new type*)
              else (E.error pos ("invalid element type of " ^ S.name typ);
              {exp=();ty=T.NIL})
          | _ -> (E.error pos (S.name typ ^ " is not an array type");
          {exp=();ty=T.NIL})
          else ( E.error pos ("invalid array size of " ^ S.name typ);
                 {exp=();ty=T.NIL})
        )
    | A.LetExp {decs; body; _} ->
        let update_env (old_venv, old_tenv) dec  =
          transDec lv old_venv old_tenv dec in
        let (new_venv,new_tenv) =
          List.fold_left update_env (venv,tenv) decs in
        transExp lv new_venv new_tenv body (* the function body is still in the same frame *)
  in trexp e
and transVar (lv:TS.level) venv tenv v: expty =
  let rec trvar = function
  | A.SimpleVar (s,pos) ->
      (match S.look (venv,s) with
      | None -> E.error pos ("undefined variable " ^ S.name s);
                {exp=();ty=T.NIL}
      | Some (Env.VarEntry {ty; access=_}) -> {exp=();ty=ty}
      | Some (Env.FunEntry _) -> 
                E.error pos (S.name s ^ " is not a variable");
                {exp=();ty=T.NIL})
  | A.FieldVar (var,s,pos) ->
      let {exp=_;ty=var_ty} = trvar var in
        let var_ty = real_type (Some var_ty) in
        (match var_ty with
        | Some (T.RECORD (record_tys, _)) ->
           let field_res = 
            List.find_opt (fun (record_s,_) -> s = record_s) record_tys in
            (match field_res with
            | Some (_, field_ty) -> {exp=();ty=field_ty}
            | None -> E.error pos (S.name s ^ " not found in the field");
              {exp=();ty=T.NIL})
        | _ -> E.error pos (S.name s ^ " is not a valid field name");
               {exp=();ty=T.NIL})
  | A.SubscriptVar (var,exp,pos) -> 
      let {exp=_;ty=exp_ty} = transExp lv venv tenv exp in
        (match exp_ty with
        | T.INT -> 
          ( let {exp=_;ty=var_ty} = trvar var in
            match real_type (Some var_ty) with
            | Some (T.ARRAY (a_ty, _)) -> {exp=();ty=a_ty}
            | _ -> E.error pos ("Not an array type");
                   {exp=();ty=T.NIL})
        | _ -> E.error pos ("Not a valid integer index");
               {exp=();ty=T.NIL})
  in trvar v


and transDec (lv:TS.level) venv tenv d : venv * tenv = match d with
  | A.VarDec {name;escape;typ=None;init;pos} ->
      let {exp=_;ty} = transExp lv venv tenv init in
      (match ty with
      | T.NIL -> E.error pos ("Invalid nil declaration")
      | _ -> ());(S.enter (venv, name, Env.VarEntry {ty=ty; access=TS.allocLocal lv escape}), tenv)
  | A.VarDec {name;escape;typ=Some (ty_name,ty_pos);init;pos=_} ->
      let {exp=_;ty} = transExp lv venv tenv init in
      let ty' = lookType tenv ty_name ty_pos in
          if (ty == ty' || ty = T.NIL)
            then (S.enter (venv, name, Env.VarEntry {ty=ty'; access=TS.allocLocal lv escape}), tenv)
            else (E.error ty_pos ("type "^ S.name ty_name ^ " not match");
            (venv,tenv))
  | A.TypeDec tydeclis ->
      let () = checkDupTy tydeclis in
      let mkheader tenv ({name;ty=_;pos=_}:A.typedec) = 
        S.enter(tenv,name,T.NAME(name, ref None)) in
      let tenv' = List.fold_left mkheader tenv tydeclis in
      let trTy ({name;ty=ty_exp;pos=_}:A.typedec) = 
        match S.look (tenv', name) with
        | Some (T.NAME (_, real_ty)) ->
            real_ty := (
              let {ty=ty_res;exp=_} = transTy tenv' ty_exp in
              Some ty_res )
        | _ -> assert false (* impossible *) in
      List.iter trTy tydeclis;(venv,tenv')
      (* let actual_ty old_tenv ({name;ty=_;pos=_}:A.typedec) =
         match S.look (tenv', name) with
         | Some (T.NAME (_, real_ty)) -> 
              (match !real_ty with
              | Some real_ty ->  S.enter (old_tenv, name, real_ty)
              | None -> assert false )
         | _ -> old_tenv in      
      (venv,List.fold_left actual_ty tenv tydeclis) *)
  | A.FunctionDec fundeclis ->
      (* gather information about the header of each function*)
      let () = checkDupFun fundeclis in
      let find_formal_type
        ({name=_;escape=_;typ=param_typ;pos}:A.field) = 
          lookType tenv param_typ pos in
      let collect_escape_list (field:A.field) = field.escape in
      let mkheader_sig venv
        ({name;params;result;body=_;pos=_}:A.fundec) =
        let formals = List.map find_formal_type params in
        let escapes = List.map collect_escape_list params in
        let result = match result with
          | None -> T.UNIT
          | Some (ty,pos) -> lookType tenv ty pos in
            let new_label = TP.newlabel() in 
              (* create a new frame name for every new function declaration *)
               S.enter (venv,name,Env.FunEntry{formals=formals;result=result;
                                               level=TS.newLevel lv new_label escapes;
                                               label=new_label}) in
      let venv' = List.fold_left mkheader_sig venv fundeclis in 
      (* [venv'] is the VarEnv where all the signatures of functions have been collected,
         the processing of every function body in the declaration will be based on this
         VarEnv *)

      (* process each function body *)
      let process_function ({name;params;result;body;pos}:A.fundec) =
        let enter_args venv
          ({name;escape;typ=param_typ;pos}:A.field) = 
          S.enter (venv, name,  Env.VarEntry {ty=lookType tenv param_typ pos;
                                              access=TS.allocLocal lv escape}) in
        let func_venv = List.fold_left enter_args venv' params in
        let {exp=_;ty=ret_ty} = transExp lv func_venv tenv body in
        let result = match result with
          | None -> T.UNIT
          | Some (ty,pos) -> lookType tenv ty pos in
        if ty_cmp ret_ty result then ()
        else E.error pos ("Wrong Return Type of Function "^ S.name name)
      in

      List.iter process_function fundeclis;
      (venv',tenv)

and transTy tenv t : expty = match t with
  | A.ArrayTy (symbol,pos) ->
      (match S.look (tenv,symbol) with
      | None -> E.error pos ("undefined type name " ^ S.name symbol);
                {exp=();ty=T.NIL}
      | Some arty -> {exp=();ty=T.ARRAY(arty,ref ())})
  | A.RecordTy fieldlis ->
      let walk_field (f:A.field) = 
      ( match S.look (tenv,f.typ) with
        | Some ty -> (f.name, ty)
        | None -> E.error f.pos ("undefined type name "^ S.name f.typ);(f.name, T.NIL)
      ) in let rec_type = List.map walk_field fieldlis in
      {exp=();ty=T.RECORD(rec_type,ref ())}
  | A.NameTy (symbol,pos) ->
      let rec find_mult symbol' rec_env =
        if S.look (rec_env, symbol') = Some ()
        then (E.error pos ("cyclic definition in " ^ S.name symbol');
              {exp=();ty=T.NIL})
        else
        (match S.look (tenv,symbol') with
          | None -> E.error pos ("undefined type name " ^ S.name symbol);
                    {exp=();ty=T.NIL}
          | Some (NAME (sym, tref)) -> (match !tref with
            | Some ty -> {exp=();ty=ty}
            | None -> 
              let new_rec_env = S.enter (rec_env,sym,()) in
              let actual_sem = find_mult sym new_rec_env in
              actual_sem
            )
          | Some other_ty -> {exp=();ty=other_ty})
      in find_mult symbol S.empty 




module FindEscape = struct
  (* type depth = int
  type escEnv = (depth * bool ref) S.table

  let traverseVar (env:escEnv) (d:depth) (s:A.var) : unit =
    ()

  and traverseExp (env:escEnv) (d:depth) (s:A.exp) : unit =
    ()

  and traverseDecs (env:escEnv) (d:depth) (s: A.dec list) : escEnv =
    S.empty 
    
  TODO: to keep things simple, we currently assume that all parameters will be escaped
    
  *)
  

  let findEscape (prog: A.exp) : unit =
    let _ = prog in
    ()
end


let transProg  (e:A.exp): unit =
  let _ = FindEscape.findEscape e in 
  (* pre-process the AST, make sure that the "escape" label 
    is correctly set for every parameter *)

  let {exp=_;ty=_} = transExp TS.outermost Env.base_venv Env.base_tenv e in
    ()