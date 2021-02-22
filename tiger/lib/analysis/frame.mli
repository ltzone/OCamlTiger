(** This is an abstraction of the interface for frames, which 
will later be implemented by a module specific to the target 
machine *)


module type AbstractFrame = sig
   
   type frame 
   (** holds information about formal parameters and local variables 
   allocated to a frame *)
   
   type access
   (** describes the formals and locals that may be in the frame or registers
      an example implementation will be like
   
         type access = InFrame of int | InReg of Temp.temp
   
   *)

   type frag = PROC of { body: Ast.Tree.stm; (** the result returned from [procEntryExit1] *)
                         frame: frame        (** machine-specific information about local variables and parameters *) 
                       } (** a descriptor for the function containing the necessary
                             information produced by the Translate phase *)
             | STRING of Ast.Temp.label * string  
   
   val outermost_frame : frame
   
   
   val newFrame :  Ast.Temp.label (* names *) -> bool list (* formals *) -> frame 
   (** to make a new frame for a function (f:Temp.label) with a list of
      booleans indicating whether the parameter is escaped:
      (i.e. passed by reference, address is taken, 
            or accessed from a nested function )
      
      Note: parameters may be seen differently by the caller and callee.
            for each parameter, this function will determine
            1. how it should be seen __inside__ the function
            2. what instructions must be produced to implement the 'view shift'
               caused by the difference in caller and callee
     
      Therefore, the implementation of this function will be closely related
      to the calling convention of the target machine. *)
   
   
   val name : frame -> Ast.Temp.label
   
   
   val formals: frame -> access list
   (** to extract a list of k "accesses" denoting the locations where the formal
       parameters will be kept at run time.  *)
   
   val allocLocal : frame -> bool -> access
   (** will return an InFrame access with an offset from the frame pointer,
       if the escape boolean is false, then the variable can be returned
       as an access to register *)

   val fp : Ast.Temp.temp

   val word_size : int

   val exp : access -> Ast.Tree.exp -> Ast.Tree.exp
   (** translate a Frame access into Tree expression, the second argument
       is used in case of static links, because the address of the frame
       is only the same as the current frame only when it is accessed from
       the same level
   *)

   val string : Ast.Temp.label -> string -> string
  (** takes in a label definition and a string constant,
      the function should generate the assembly-language instructions
      required to define and initialize a string literal
  *)
   
end

module MIPSFrame : AbstractFrame
