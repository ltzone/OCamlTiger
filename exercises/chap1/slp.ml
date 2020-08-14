(** Textbook Materials for Chapter 1*)
type id = string;;

type binop = Plus | Minus | Times | Div;;

type stm = CompoundStm of stm * stm
	     | AssignStm of id * exp
	     | PrintStm of exp list 

and exp = IdExp of id
	     | NumExp of int
         | OpExp of exp * binop * exp
         | EseqExp of stm * exp;;

let prog = 
 CompoundStm(AssignStm("a",OpExp(NumExp 5, Plus, NumExp 3)),
  CompoundStm(AssignStm("b",
      EseqExp(PrintStm[IdExp"a";OpExp(IdExp"a", Minus,NumExp 1)],
           OpExp(NumExp 10, Times, IdExp"a"))),
   PrintStm[IdExp "b"]));;

(** Programming Exercise on Page 11 -- Straight Line Interpreter *)

(* Exercise 1: maximum number of print args *)
let rec maxargs prog = 
    let rec maxargs_exp expr = 
        match expr with
        | IdExp _ -> 0
        | NumExp _ -> 0
        | OpExp (a, _, c) -> max (maxargs_exp a) (maxargs_exp c)
        | EseqExp (a, b) -> max (maxargs a) (maxargs_exp b)
    in
    match prog with
        | CompoundStm (stm1, stm2) -> max (maxargs stm1) (maxargs stm2)
        | AssignStm (_, exp1) -> maxargs_exp exp1
        | PrintStm stmlis -> List.length stmlis ;;


(* Exercise 2: Interpreter Simulation *)

type valtable = (id * int) list;;

let rec lookup table id =
    match table with
    | [] -> 0
    | (tabid,num) :: remtable ->
        if (String.equal tabid id)
            then num
            else lookup remtable id;; 

let rec interpStm (stm, table) = 
let rec interpExp (exp,table) = 
    match exp with
    | IdExp a -> (lookup table a,table)
    | NumExp a -> (a,table)
    | EseqExp (stm, exp) -> interpExp (exp,interpStm(stm,table)) 
    | OpExp (a,op,b) ->
        let (num1, table1) = interpExp(a,table) in
        let (num2, table2) = interpExp(b,table1) in
        match op with
        | Plus -> ((num1 + num2),table2)
        | Minus -> ((num1 - num2),table2)
        | Times -> ((num1 * num2),table2)
        | Div -> ((num1 / num2),table2)
    

in let rec printExp explis table =
    match explis with
    | [] ->  print_newline(); table
    | exp :: remlis ->
        let (newint, newtable) = (interpExp (exp, table)) in
            print_int newint;
            print_string " ";
            printExp remlis newtable

in  
    match stm with
    | CompoundStm (stm1, stm2) -> interpStm (stm2, (interpStm (stm1, table)))
    | PrintStm explis -> printExp explis table
    | AssignStm (id, exp) -> 
        let (evlnum, newtable) = interpExp(exp,table) in
            (id,evlnum)::newtable ;;

(* let main () =
    (* let arg = int_of_string Sys.argv.(1) in *)
    (*  print_int (maxargs prog);
        print_newline ();
        print_newline (); *)
        interpStm (prog, []) *)