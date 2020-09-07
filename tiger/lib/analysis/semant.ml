module A = Ast.Absyn;;
module T = Types;;
module S = Ast.Symbol;;
module E = Errormsg;;

type venv = Env.enventry Ast.Symbol.table
type tenv = T.ty Ast.Symbol.table

type expty = {exp: Translate.exp; ty: Types.ty}

let checkInt {exp;ty} pos : Translate.exp =
  let _ = exp in
    match ty with
    | T.INT -> ()
    | _ -> Errormsg.error pos "integer required"

let lookType tenv ty_name pos = 
  match S.look (tenv, ty_name) with
  | None -> E.error pos ("undefined type name " ^ S.name ty_name);T.NIL
  | Some ty -> ty

let rec transExp venv tenv (e:A.exp) : expty =
  let _ = venv in
  let _ = tenv in
  let rec trexp = function
    | A.NilExp -> {exp=(); ty=T.NIL}
    | A.IntExp _ -> {exp=(); ty=T.INT}
    | A.StringExp _ -> {exp=(); ty=T.STRING}
    | A.VarExp var -> transVar venv tenv var
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
    | A.RecordExp {fields;typ=type_id;pos} ->
        (
          match S.look (tenv, type_id) with
          | None -> E.error pos ("undefined record type " ^ S.name type_id);
            {exp=();ty=T.NIL}
          | Some ty -> (match ty with
            | T.RECORD (fty_list,_) -> 
                let rec iter_field field_tys fields =
                  match field_tys, fields with
                  | (sym1,ty)::field_tys', (sym2,f,pos')::fields'
                      -> let {exp=_;ty=arg_ty} = trexp f in 
                        if (ty = arg_ty)
                          then (if sym1=sym2 then iter_field field_tys' fields'
                          else E.error pos' ("Wrong field name of " ^ S.name sym2))
                          else E.error pos' ("Wrong field type of " ^ S.name sym2)
                  | _ -> E.error pos ("Field number mismatches") in
                iter_field fty_list fields;
                {exp=();ty=ty}
            | _ -> E.error pos (S.name type_id ^ " is not a record type");
            {exp=();ty=T.NIL})
        )
    | A.SeqExp [] -> {exp=();ty=T.UNIT}
    | A.SeqExp [(exp,_)] -> trexp exp
    | A.SeqExp ((exp,pos)::seq') ->
        let {exp=_;ty=exp_ty} = trexp exp in
          (match exp_ty with
          | T.UNIT -> trexp (A.SeqExp seq')
          | _ -> E.error pos ("Expression not a unit type");{exp=();ty=T.NIL})
    | A.AssignExp {var;exp;pos} ->
        let {exp=_;ty=exp_ty} = trexp exp in
        let {exp=_;ty=var_ty} = transVar venv tenv var in
          if exp_ty = var_ty then {exp=();ty=T.UNIT}
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
          if then_ty = else_ty then {exp=();ty=then_ty}
          else (E.error pos ("Two Branches have different type");
                {exp=();ty=T.NIL})
        )
        else (E.error pos ("Condition has invalid type");{exp=();ty=T.NIL})
    | A.WhileExp {test; body; pos} ->
        let {exp=_;ty=test_ty} = trexp test in
          if test_ty = T.INT then
          ( let {exp=_;ty=body_ty} = trexp body in
            {exp=();ty=body_ty}
          )
          else (E.error pos ("Condition has invalid type");{exp=();ty=T.NIL})
    | A.ForExp {var; escape=_; lo; hi; body; pos} ->
        let {exp=_;ty=lo_ty} = trexp lo in
        let {exp=_;ty=hi_ty} = trexp hi in
          (match lo_ty, hi_ty with
          | T.INT, T.INT -> 
              let {exp=_;ty=body_ty} =
                transExp (S.enter (venv,var,VarEntry {ty=T.INT})) tenv body in
              {exp=();ty=body_ty}
          | _ -> E.error pos "illegal bounds"; {exp=();ty=T.NIL})
    | A.BreakExp _ -> {exp=();ty=T.UNIT}
    | A.ArrayExp {typ; size; init; pos} ->
        let arty = S.look (tenv,typ) in
        (match arty with
        | None -> E.error pos ("undefined type " ^ S.name typ);{exp=();ty=T.NIL}
        | Some arty -> (
          let {exp=_;ty=init_ty} = trexp init in
          let {exp=_;ty=size_ty} = trexp size in
          if size_ty = T.INT then
            ( if init_ty = arty then
              {exp=();ty=T.ARRAY (arty,ref ())}
              else ( E.error pos ("invalid array size of " ^ S.name typ);
                    {exp=();ty=T.NIL}))
          else ( E.error pos ("invalid array size of " ^ S.name typ);
                 {exp=();ty=T.NIL})
        ))
    | A.LetExp {decs; body; _} ->
        let update_env (old_venv, old_tenv) dec  =
          transDec old_venv old_tenv dec in
        let (new_venv,new_tenv) =
          List.fold_left update_env (venv,tenv) decs in
        transExp new_venv new_tenv body
  in trexp e
and transVar venv tenv v: expty =
  let rec trvar = function
  | A.SimpleVar (s,pos) ->
      (match S.look (venv,s) with
      | None -> E.error pos ("undefined variable " ^ S.name s);
                {exp=();ty=T.NIL}
      | Some (Env.VarEntry {ty}) -> {exp=();ty=ty}
      | Some (Env.FunEntry _) -> 
                E.error pos (S.name s ^ " is not a variable");
                {exp=();ty=T.NIL})
  | A.FieldVar (var,s,pos) ->
      let {exp=_;ty=var_ty} = trvar var in
        (match var_ty with
        | T.RECORD (record_tys, _) ->
           let _, field_ty = 
            List.find (fun (record_s,_) -> s = record_s) record_tys in
           {exp=();ty=field_ty}
        | _ -> E.error pos (S.name s ^ " is not a valid field name");
               {exp=();ty=T.NIL})
  | A.SubscriptVar (var,exp,pos) -> 
      let {exp=_;ty=exp_ty} = transExp venv tenv exp in
        (match exp_ty with
        | T.INT -> 
          ( let {exp=_;ty=var_ty} = trvar var in
            match var_ty with
            | T.ARRAY (a_ty, _) -> {exp=();ty=a_ty}
            | _ -> E.error pos ("Not an array type");
                   {exp=();ty=T.NIL})
        | _ -> E.error pos ("Not a valid integer index");
               {exp=();ty=T.NIL})
  in trvar v


and transDec venv tenv d : venv * tenv = match d with
  | A.VarDec {name;escape=_;typ=None;init;pos=_} ->
      let {exp=_;ty} = transExp venv tenv init in
      (S.enter (venv, name, Env.VarEntry {ty=ty}), tenv)
  | A.VarDec {name;escape=_;typ=Some (ty_name,ty_pos);init;pos=_} ->
      let {exp=_;ty} = transExp venv tenv init in
      (match (S.look (tenv, ty_name)) with
      | None -> E.error ty_pos ("undefined type name "^ S.name ty_name);
                (venv,tenv)
      | Some ty' -> if ty = ty' 
            then (S.enter (venv, name, Env.VarEntry {ty=ty}), tenv)
            else (E.error ty_pos ("type "^ S.name ty_name ^ " not match");
            (venv,tenv)))
  | A.TypeDec tydeclis ->
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
  | A.FunctionDec fundeclis ->
      (* gather information about the header of each function*)
      let find_formal_type
        ({name=_;escape=_;typ=param_typ;pos}:A.field) = 
          lookType tenv param_typ pos in
      let mkheader_sig venv
        ({name;params;result;body=_;pos=_}:A.fundec) =
        let formals = List.map find_formal_type params in
        let result = match result with
          | None -> T.UNIT
          | Some (ty,pos) -> lookType tenv ty pos in
        S.enter (venv,name,Env.FunEntry{formals=formals;result=result}) in
      let venv' = List.fold_left mkheader_sig venv fundeclis in

      (* process each function body *)
      let process_function ({name;params;result;body;pos}:A.fundec) =
        let enter_args venv
          ({name;escape=_;typ=param_typ;pos}:A.field) = 
          S.enter (venv, name, Env.VarEntry {ty=lookType tenv param_typ pos}) in
        let func_venv = List.fold_left enter_args venv' params in
        let {exp=_;ty=ret_ty} = transExp func_venv tenv body in
        let result = match result with
          | None -> T.UNIT
          | Some (ty,pos) -> lookType tenv ty pos in
        if ret_ty = result then ()
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



let transProg  (e:Ast.Absyn.exp): unit = 
  let {exp=_;ty=_} = transExp Env.base_venv Env.base_tenv e in
    ()