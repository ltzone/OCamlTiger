type unique = unit ref

type ty = 
  | RECORD of (Symbol.symbol * ty) list * unique
  | NIL
  | INT
  | STRING
  | ARRAY of ty * unique
  | NAME of Symbol.symbol * ty option ref
  | UNIT

module S = Symbol

let print_ty ty = 
  let rec ty_string = function
  | RECORD (lis, _) ->
      let pr_elm (sym, ty) = S.name sym ^ " " ^ ty_string ty in
    "Record (" ^  String.concat " ; " (List.map pr_elm lis) ^ ")"
  | ARRAY (ty,_) -> "Array (" ^ ty_string ty ^ ")"
  | NAME (symbol, rf) -> (match !rf with
      | None -> "Name (" ^ S.name symbol ^"(none))"
      | Some _ -> "Name (" ^ S.name symbol ^"(something))")
  | NIL -> "Nil"
  | INT -> "Int"
  | STRING -> "String"
  | UNIT -> "Unit" in
  print_endline (ty_string ty)

let print_ty_opt ty = 
  match ty with
  | Some ty -> print_ty ty
  | None -> print_endline "None"

(*type_check ty with its declared type *)
let ty_check a b =
  match a, b with
  | UNIT, UNIT -> true
  | STRING, STRING -> true
  | INT, INT -> true
  | ARRAY (_, r1), ARRAY (_, r2) -> r1 = r2
  | RECORD (_, r1), RECORD (_, r2) -> r1 = r2
  | NAME (sym1, _), NAME (sym2, _) ->sym1 = sym2
  | NIL, _ -> true
  | _, NIL -> true
  | _ -> false

let ty_check_opt a b =
  match a, b with
  | Some a1, Some b1 -> ty_check a1 b1
  | _, _ -> false