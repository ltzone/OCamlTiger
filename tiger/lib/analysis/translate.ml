module FR = Frame.MIPSFrame
module T = Ast.Tree
module Temp = Ast.Temp
(** Choose the Frame of the target machine here *)


type level = {frame : FR.frame; parent: level option; mutable unique : unit } (* TODO not sure this is enough *)
(** To describe a FunEntry during semantic analysis

    will be returned to Semant Module, in order to be kept
    in the FunEntry data structure for the function, so that
    when it comes across a function call, it can pass the 
    called function's level back to Translate.

    unique field is to judge whether two frames are equal
    when following static links
*)


type access = level * FR.access
(** To describe a VarEntry during semantic analysis

    Note: this type declaration is not the same as Frame.access 

    An example implementation can be (level * Frame.access), so that
    the level information can be necessary later for calculating static
    links, when the variable is accessed from a (possibly) different
    level
*)

let outermost : level =  {frame=FR.outermost_frame; parent=None; unique = ()}
(** all "library" functions will be declared at this level, which does
    not contain a frame or formal parameter list
*)


let newLevel  (parent:level) (name: Ast.Temp.label) (formals:bool list): level =
  let new_frame = FR.newFrame name (true::formals) in
      (* an extra parameter [true] is passed to the [newFrame] function so
         so that fp will point to the static link of the current frame *)
  { frame= new_frame; parent= Some parent; unique= ()}
(** will be called by transDec in the semantic analysis phase,
    a new 'nesting level' for each function will be created. *)

let formals (lv:level) : access list =
  let frame_formals = FR.formals lv.frame in
  let current_formals = List.tl frame_formals in
  let append_lv acc = (lv, acc) in
  List.map append_lv current_formals
(** gain the access values (i.e. offsets) for a level's formal parameters *)


let allocLocal (lv:level) (escape:bool) : access =
  (lv, FR.allocLocal lv.frame escape)
(** will be called when Semant processes a local variable declaration
    
    This function will need the level information and also know whether 
    the variable in question should be escaped.

    An Translate.access will be returned, so that Semant can hand this
    access back to Translate later when it encounters a use of the 
    declared variable, in order to generate the machine code to access
    this variable
*)


type exp = Ex of T.exp (** stands for an "expression", represented as a Tree.exp *)
         | Nx of T.stm (** stands for "no result", represented as a [Tree] statement *)
         | Cx of (Temp.label -> Temp.label -> T.stm)
           (** stands for "conditional", a function from label-pair to statement, make a statement
               given a true destination and false destination *)

let unEx = function
| Ex e -> e
| Cx genstm ->
    let r = Temp.newtemp() in
    let t = Temp.newlabel() in
    let f = Temp.newlabel() in
    T.ESEQ(T.seq [
      T.MOVE (T.TEMP r, T.CONST 1);
      genstm t f;
      T.LABEL f;
      T.MOVE (T.TEMP r, T.CONST 0);
      T.LABEL t
    ], T.TEMP r)
| Nx s -> T.ESEQ (s, T.CONST 0)

let unCx = function
| Cx c -> c
| Nx _ -> assert false (* impossible *)
| Ex e -> 
    let z1 = Temp.newlabel() in
    let z2 = Temp.newlabel() in
    (fun t f -> T.seq [
      T.CJUMP (T.EQ, e, T.CONST 0, f, z1);
      T.LABEL z1;
      T.CJUMP (T.EQ, e, T.CONST 1, t, z2);
      T.LABEL z2;
    ])

let unNx = function
| Nx n -> n
| Ex e -> T.EXP e
| Cx c -> let c_exp = unEx (Cx c) in T.EXP c_exp


let rec get_static_link (target_level:level) (current_lv: level) : T.exp =
    if current_lv.unique = target_level.unique 
      then Ast.Tree.TEMP FR.fp
      else match current_lv.parent with
          | None -> assert false (* impossible, static link must be found *) 
          | Some parent_fr -> get_static_link target_level parent_fr


let simpleVar (acc:access) (current_lv : level) : exp =
  (* TODO: can be optimized since reg needn't follow static links *)
  let acc_lv, acc_fr = acc in
  let static_link = (* the fp address that can access the variable *)
    get_static_link acc_lv current_lv in 
  Ex (FR.exp acc_fr static_link)

let fieldVar (base_var: exp) (field_idx: int) : exp = 
  Ex (MEM (BINOP (PLUS, unEx base_var, CONST (field_idx * FR.word_size))))
  (** In Tiger, there are no structured, or large l-values. This is because
      all record and array values are really pointers to record and array
      structures. So to select a field, we only need to add a fixed offset
      to the base address.

      We don't need to bother l/r-values, since in the [Tree] intermediate
      representation, [MEM] means both store (when used as the left child of
      [MOVE]) and fetch (when used elsewhere)
  *)


let subscriptVar (base_var:exp) (array_idx:exp) : exp =
  Ex (MEM (BINOP (PLUS, unEx base_var, unEx array_idx)))

let opExp (oper:Ast.Absyn.oper) (left:exp) (right:exp) : exp =
  let left_ex = unEx left in
  let right_ex = unEx right in
    match oper with
    | PlusOp -> Ex (BINOP (PLUS, left_ex, right_ex))
    | MinusOp -> Ex (BINOP (MINUS, left_ex, right_ex))
    | TimesOp -> Ex (BINOP (MUL, left_ex, right_ex))
    | DivideOp -> Ex (BINOP (DIV, left_ex, right_ex))
    | EqOp -> Cx (fun t f -> CJUMP (EQ, left_ex, right_ex, t, f)) 
    | NeqOp -> Cx (fun t f -> CJUMP (NE, left_ex, right_ex, t, f))  
    | LtOp -> Cx (fun t f -> CJUMP (LT, left_ex, right_ex, t, f))  
    | LeOp -> Cx (fun t f -> CJUMP (LE, left_ex, right_ex, t, f))  
    | GtOp -> Cx (fun t f -> CJUMP (GT, left_ex, right_ex, t, f))  
    | GeOp -> Cx (fun t f -> CJUMP (GE, left_ex, right_ex, t, f))  
  (* note that logical operator such as & and | has already been 
     translated into if-expressions in the abstract syntax tree
  *)

let deref_exp (exp:T.exp) : T.exp =
  match exp with
  | MEM exp -> exp
  | ESEQ (stm, MEM exp) -> ESEQ (stm, exp)
  | _ -> assert false
(** used for array and record comparison,
  TODO: not sure this is the correct implementation
*)


let derefEqExp (oper:Ast.Absyn.oper) (left:exp) (right:exp) : exp =
  let left_ex = deref_exp (unEx left) in
  let right_ex = deref_exp (unEx right) in
    match oper with
    | EqOp -> Cx (fun t f -> CJUMP (EQ, left_ex, right_ex, t, f)) 
    | NeqOp -> Cx (fun t f -> CJUMP (NE, left_ex, right_ex, t, f))  
    | _ -> assert false (* will not happen *)
  (* note that logical operator such as & and | has already been 
      translated into if-expressions in the abstract syntax tree
  *)

let ifExp1 test then' =
  let cond = unCx test in
  let t = Temp.newlabel() in
  let f = Temp.newlabel() in
  let then' = unNx then' in 
  (* because then' must evaluate to no value *)
   Nx (T.seq [
     cond t f;
     LABEL t;
     then';
     LABEL f])

let ifExp2 test then' else' =
  let cond = unCx test in
  match then', else' with
  | Cx then', Cx else' ->
    (* when both branches are condition,
       a Cx is more likely to be expected *)
    let z1 = Temp.newlabel() in
    let z2 = Temp.newlabel() in
      Cx (fun t f ->
        T.seq [
          cond z1 z2;
          LABEL z1;
          then' t f;
          LABEL z2;
          else' t f
        ]
      )
  | Nx then', Nx else' ->
    (* when both branches return no value,
       a Nx is more likely to be expected *)
    let t = Temp.newlabel() in
    let f = Temp.newlabel() in
    let e = Temp.newlabel() in
      Nx (T.seq [
        cond t f;
        LABEL t;
        then';
        JUMP (NAME e, [e]);
        LABEL f;
        else';
        LABEL e;
      ])
  | then', else' -> 
    (* for other cases, we coerce the expression into exp type
       TODO: can be improved for the case where either expression
       is Cx *)
    let then' = unEx then' in
    let else' = unEx else' in
    let t = Temp.newlabel() in
    let f = Temp.newlabel() in
    let r = Temp.newtemp() in
    let j = Temp.newlabel() in
     Ex (ESEQ ( T.seq [
       cond t f;
       LABEL t;
       MOVE (TEMP r, then');
       JUMP (NAME j, [j]);
       LABEL f;
       MOVE (TEMP r, else');
       LABEL j;
     ], TEMP r))