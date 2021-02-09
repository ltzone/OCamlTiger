module type TREE = 
sig 
  type label = Temp.label
  type size

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

  val notRel : relop -> relop
  val commute: relop -> relop
end


module Tree : TREE = 
struct
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


  let notRel r_op = r_op

  let commute r_op = r_op

end


module PrintTree : sig
  val print_tree : out_channel -> Tree.stm -> unit
end = struct
  module T = Tree
  let print_tree outstream s0 =
  let say s =  output_string outstream s in
  let sayln s= (say s; say "\n") in
  let rec indent i = if i = 0 then () else 
                     (say " "; indent(i-1)) in
  let rec stm = function 
    | (T.SEQ(a,b),d) ->
        (indent d; sayln "SEQ("; stm(a,d+1); sayln ","; stm(b,d+1); say ")")
    | (T.LABEL lab, d) -> (indent d; say "LABEL "; say (Symbol.name lab))
    | (T.JUMP (e,_), d) ->  (indent d; sayln "JUMP("; exp(e,d+1); say ")")
    | (T.CJUMP(r,a,b,t,f),d) -> (indent d; say "CJUMP(";
       relop r; sayln ",";
       exp(a,d+1); sayln ","; exp(b,d+1); sayln ",";
       indent(d+1); say(Symbol.name t); 
       say ","; say (Symbol.name f); say ")")
    | (T.MOVE(a,b),d) -> (indent d; sayln "MOVE("; exp(a,d+1); sayln ",";
         exp(b,d+1); say ")")
    | (T.EXP e, d) -> (indent d; sayln "EXP("; exp(e,d+1); say ")")
  and exp = function
| (T.BINOP(p,a,b),d) -> (indent d; say "BINOP("; binop p; sayln ",";
        exp(a,d+1); sayln ","; exp(b,d+1); say ")")
| (T.MEM(e),d) -> (indent d; sayln "MEM("; exp(e,d+1); say ")")
| (T.TEMP t, d) -> (indent d; say "TEMP t"; say(Temp.makestring t))
| (T.ESEQ(s,e),d) -> (indent d; sayln "ESEQ("; stm(s,d+1); sayln ",";
   exp(e,d+1); say ")")
| (T.NAME lab, d) -> (indent d; say "NAME "; say (Symbol.name lab))
| (T.CONST i, d) -> (indent d; say "CONST "; say(string_of_int i))
| (T.CALL(e,el),d) -> (indent d; sayln "CALL("; exp(e,d+1);
    List.iter (fun a -> (sayln ","; exp(a,d+2))) el;
    say ")")

and binop = function
| T.PLUS -> say "PLUS"
| T.MINUS -> say "MINUS"
| T.MUL -> say "MUL"
| T.DIV -> say "DIV"
| T.AND -> say "AND"
| T.OR -> say "OR"
| T.LSHIFT -> say "LSHIFT"
| T.RSHIFT -> say "RSHIFT"
| T.ARSHIFT -> say "ARSHIFT"
| T.XOR -> say "XOR"

and relop = function
| T.EQ -> say "EQ"
|  T.NE -> say "NE"
|  T.LT -> say "LT"
|  T.GT -> say "GT"
|  T.LE -> say "LE"
|  T.GE -> say "GE"
|  T.ULT -> say "ULT"
|  T.ULE -> say "ULE"
|  T.UGT -> say "UGT"
|  T.UGE -> say "UGE"

in  stm(s0,0); sayln ""; flush outstream
end