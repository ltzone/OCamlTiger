(** Translate module serves the second layer of abstraction between
    in semantic analysis phase.

    +--------------------------+
    |           Semant         |
    +--------------------------+
              TRANSLATE
    +--------------------------+
    |         Translate        | <----- This module
    +--------------------------+
      FRAME              TEMP
    +-------+          +-------+
    |       |          |       | # Dependent on Target Machine
    | Frame |          | Temp  | # Might as well _independent_ of
    +-------+          +-------+ # the frontend language design
     
*)


type level
(** To describe a FunEntry during semantic analysis

    will be returned to Semant Module, in order to be kept
    in the FunEntry data structure for the function, so that
    when it comes to across a function call, it can pass the 
    called function's level back to Translate.
*)


type access
(** To describe a VarEntry during semantic analysis

    Note: this type declaration is not the same as Frame.access 

    An example implementation can be (level * Frame.access), so that
    the level information can be necessary later for calculating static
    links, when the variable is accessed from a (possibly) different
    level
*)

val outermost: level
(** all "library" functions will be declared at this level, which does
    not contain a frame or formal parameter list
*)


val newLevel : level (* parent *) -> Temp.label (* name *) 
                -> bool list (* formals *) -> level
(** will be called by transDec in the semantic analysis phase,
    a new 'nesting level' for each function will be created.

    This function will call [Frame.newFrame] function to make a new frame

    Note, for Tiger language that needs static links, since Frame
    design should be independent of language features, this should be
    handled in this module. We can add an extra parameter [true] to the
    formals list and pass that to [Frame.newFrame].
*)

val formals : level -> access list
(** gain the access values (i.e. offsets) for a level's formal parameters *)


val allocLocal : level -> bool -> access
(** will be called when Semant processes a local variable declaration
    
    This function will need the level information and know whether 
    the variable in question should be escaped.

    An Translate.access will be returned, so that Semant can hand this
    access back to Translate later when it encounters a use of the 
    declared variable, in order to generate the machine code to access
    this variable
*)


type exp = unit (* for temp use *)