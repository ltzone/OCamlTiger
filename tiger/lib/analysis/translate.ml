type exp = unit


type level = unit
(** To describe a FunEntry during semantic analysis

    will be returned to Semant Module, in order to be kept
    in the FunEntry data structure for the function, so that
    when it comes to across a function call, it can pass the 
    called function's level back to Translate.
*)


type access = unit
(** To describe a VarEntry during semantic analysis

    Note: this type declaration is not the same as Frame.access 

    An example implementation can be (level * Frame.access), so that
    the level information can be necessary later for calculating static
    links, when the variable is accessed from a (possibly) different
    level
*)

let outermost =  ()
(** all "library" functions will be declared at this level, which does
    not contain a frame or formal parameter list
*)


let newLevel  (parent:level) (name: Temp.label) (formals:bool list): level =
  let _ = parent in
  let _ = name in
  let _ = formals in
  ()
(** will be called by transDec in the semantic analysis phase,
    a new 'nesting level' for each function will be created.

    This function will call [Frame.newFrame] function to make a new frame

    Note, for Tiger language that needs static links, since Frame
    design should be independent of language features, this should be
    handled in this module. We can add an extra parameter [true] to the
    formals list and pass that to [Frame.newFrame].
*)

let formals (lv:level) : access list =
  let _ = lv in []
(** gain the access values (i.e. offsets) for a level's formal parameters *)


let allocLocal (lv:level) (escape:bool) : access =
  let _ = lv in
  let _ = escape in
   ()
(** will be called when Semant processes a local variable declaration
    
    This function will need the level information and know whether 
    the variable in question should be escaped.

    An Translate.access will be returned, so that Semant can hand this
    access back to Translate later when it encounters a use of the 
    declared variable, in order to generate the machine code to access
    this variable
*)