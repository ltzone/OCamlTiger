module type AbstractFrame = sig (* same definition in frame.mli *)
   
  type frame 
  (** holds information about formal parameters and local variables 
  allocated to a frame *)
  
  type access
  (** describes the formals and locals that may be in the frame or registers
     an example implementation will be like *)
  
  
  val newFrame :  Temp.label (* name *) -> bool list (* formals *) -> frame 
  
  val name : frame -> Temp.label
  
  val formals: frame -> access list
  
  val allocLocal : frame -> bool -> access
 
end


module MIPSFrame = struct
   
  type frame = unit
  (** holds information about formal parameters and local variables 
  allocated to a frame *)
  
  type access = unit
  (** describes the formals and locals that may be in the frame or registers
     an example implementation will be like
  
        type access = InFrame of int | InReg of Temp.temp
  
  *)
  
  
  let newFrame (name: Temp.label) (formals: bool list) : frame = 
    let _ = name in
    let _ = formals in  ()
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
  
  
  let name (fr: frame) : Temp.label = 
    let _ = fr in
    Temp.namedlabel "foo"
  
  
  let formals (fr: frame) : access list = 
    let _ = fr in []
  (** to extract a list of k "accesses" denoting the locations where the formal
      parameters will be kept at run time.  *)
  
  let allocLocal (fr: frame)  (esacpe: bool) : access =
    let _ = fr in 
    let _ = esacpe in
    ()
  (** will return an InFrame access with an offset from the frame pointer,
      if the escape boolean is false, then the variable can be returned
      as an access to register *)
 
end