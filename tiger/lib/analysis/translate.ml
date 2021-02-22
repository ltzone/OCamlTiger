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


let simpleVar (acc:access) (current_lv : level) : T.exp =
  (* TODO: can be optimized since reg needn't follow static links *)
  let acc_lv, acc_fr = acc in
  let static_link = (* the fp address that can access the variable *)
    get_static_link acc_lv current_lv in 
  FR.exp acc_fr static_link

