module FR = Frame.MIPSFrame
(** Choose the Frame of the target machine here *)

type exp = unit


type level = {frame : FR.frame; parent: level option } (* TODO not sure this is enough *)
(** To describe a FunEntry during semantic analysis

    will be returned to Semant Module, in order to be kept
    in the FunEntry data structure for the function, so that
    when it comes across a function call, it can pass the 
    called function's level back to Translate.
*)


type access = level * FR.access
(** To describe a VarEntry during semantic analysis

    Note: this type declaration is not the same as Frame.access 

    An example implementation can be (level * Frame.access), so that
    the level information can be necessary later for calculating static
    links, when the variable is accessed from a (possibly) different
    level
*)

let outermost : level =  {frame=FR.outermost_frame; parent=None}
(** all "library" functions will be declared at this level, which does
    not contain a frame or formal parameter list
*)


let newLevel  (parent:level) (name: Ast.Temp.label) (formals:bool list): level =
  let new_frame = FR.newFrame name (true::formals) in
      (* an extra parameter [true] is passed to the [newFrame] function so
         so that fp will point to the static link of the current frame *)
  { frame= new_frame; parent= Some parent}
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