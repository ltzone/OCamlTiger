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
   
   
   val newFrame :  Temp.label (* names *) -> bool list (* formals *) -> frame 
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
   
   
   val name : frame -> Temp.label
   
   
   val formals: frame -> access list
   (** to extract a list of k "accesses" denoting the locations where the formal
       parameters will be kept at run time.  *)
   
   val allocLocal : frame -> bool -> access
   (** will return an InFrame access with an offset from the frame pointer,
       if the escape boolean is false, then the variable can be returned
       as an access to register *)
  
end

module MIPSFrame : AbstractFrame
