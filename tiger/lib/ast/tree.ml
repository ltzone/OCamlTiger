
type label= Temp.label
type size = int

type stm = SEQ of stm * stm
          | LABEL of label
          | JUMP of exp * label list
          | CJUMP of relop * exp * exp * label * label
          | MOVE of exp * exp
          | EXP of exp

and exp = BINOP of binop * exp * exp
        | MEM of exp
        | TEMP of Temp.temp
        | ESEQ of stm * exp
        | NAME of label
        | CONST of int
        | CALL of exp * exp list

and binop = PLUS | MINUS | MUL | DIV 
          | AND | OR | LSHIFT | RSHIFT | ARSHIFT | XOR

and relop = EQ | NE | LT | GT | LE | GE 
          | ULT | ULE | UGT | UGE

let seq (stm_lis : stm list) =
  match stm_lis with
  | [] -> assert false (* will not happen *)
  | hd::tl -> List.fold_left (fun stm seq -> SEQ (stm, seq)) hd tl 

let notRel r_op = r_op

let commute r_op = r_op


let print_tree outstream s0 =
  let say s =  output_string outstream s in
  let sayln s= (say s; say "\n") in
  let rec indent i = if i = 0 then () else 
                     (say " "; indent(i-1)) in
  let rec stm = function 
    | (SEQ(a,b),d) ->
        (indent d; sayln "SEQ("; stm(a,d+1); sayln ","; stm(b,d+1); say ")")
    | (LABEL lab, d) -> (indent d; say "LABEL "; say (Symbol.name lab))
    | (JUMP (e,_), d) ->  (indent d; sayln "JUMP("; exp(e,d+1); say ")")
    | (CJUMP(r,a,b,t,f),d) -> (indent d; say "CJUMP(";
       relop r; sayln ",";
       exp(a,d+1); sayln ","; exp(b,d+1); sayln ",";
       indent(d+1); say(Symbol.name t); 
       say ","; say (Symbol.name f); say ")")
    | (MOVE(a,b),d) -> (indent d; sayln "MOVE("; exp(a,d+1); sayln ",";
         exp(b,d+1); say ")")
    | (EXP e, d) -> (indent d; sayln "EXP("; exp(e,d+1); say ")")
  and exp = function
    | (BINOP(p,a,b),d) -> (indent d; say "BINOP("; binop p; sayln ",";
            exp(a,d+1); sayln ","; exp(b,d+1); say ")")
    | (MEM(e),d) -> (indent d; sayln "MEM("; exp(e,d+1); say ")")
    | (TEMP t, d) -> (indent d; say "TEMP t"; say(Temp.makestring t))
    | (ESEQ(s,e),d) -> (indent d; sayln "ESEQ("; stm(s,d+1); sayln ",";
      exp(e,d+1); say ")")
    | (NAME lab, d) -> (indent d; say "NAME "; say (Symbol.name lab))
    | (CONST i, d) -> (indent d; say "CONST "; say(string_of_int i))
    | (CALL(e,el),d) -> (indent d; sayln "CALL("; exp(e,d+1);
        List.iter (fun a -> (sayln ","; exp(a,d+2))) el;
        say ")")

  and binop = function
    | PLUS -> say "PLUS"
    | MINUS -> say "MINUS"
    | MUL -> say "MUL"
    | DIV -> say "DIV"
    | AND -> say "AND"
    | OR -> say "OR"
    | LSHIFT -> say "LSHIFT"
    | RSHIFT -> say "RSHIFT"
    | ARSHIFT -> say "ARSHIFT"
    | XOR -> say "XOR"

  and relop = function
    | EQ -> say "EQ"
    | NE -> say "NE"
    | LT -> say "LT"
    | GT -> say "GT"
    | LE -> say "LE"
    | GE -> say "GE"
    | ULT -> say "ULT"
    | ULE -> say "ULE"
    | UGT -> say "UGT"
    | UGE -> say "UGE"

  in  stm(s0,0); sayln ""; flush outstream
