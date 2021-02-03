module type AbstractFrame = sig (* same definition in frame.mli *)
   
  type access
  (** describes the formals and locals that may be in the frame or registers
   an example implementation will be like *)
  
  type frame
  (** holds information about formal parameters and local variables 
  allocated to a frame *)

  val outermost_frame : frame
  
  val newFrame :  Temp.label (* name *) -> bool list (* formals *) -> frame 
  
  val name : frame -> Temp.label
  
  val formals: frame -> access list
  
  val allocLocal : frame -> bool -> access
 
end


module MIPSFrame = struct
   
  type access = InFrame of int        (** access to static memory, indicated by
                                           offset (of word) from the frame pointer, 
                                          + indicates higher address, 
                                          - indicates lower address *)
              | InReg of Temp.temp    (** access to temporaries *)
  (** describes the formals and locals that may be in the frame or registers  *)
  
  type frame = {name: Temp.label; args: access list; mutable locals: access list} 
  (* TODO not sure is correct for locals *)
  (** holds information about formal parameters and local variables 
  allocated to a frame *)

  let outermost_frame = {name=Temp.newlabel (); args=[]; locals=[]}
  
  let newFrame (name: Temp.label) (formals: bool list) : frame = 
    let rec walk_formals cur_idx rem_formals =
      match rem_formals with
      | [] -> []
      | true :: formals' ->
          (InFrame cur_idx) :: walk_formals (cur_idx + 1) formals'
      | false :: formals' ->
          (InReg (Temp.newtemp())) :: walk_formals cur_idx formals'  in
    let formals_access = walk_formals 0 formals in
    { args=formals_access; locals=[]; name=name }
  (** Create a new frame, and make sure that all formals are allocated
    proper access (from the persepective of inside the function)

    According to MIPS calling convention, the passing arguments will
    be either in register or static memory, determined by the escape
    label of the argument. 
    
    For arguments that are in the frame, our compiler regulates that
    earlier arguments are assigned closer to the frame pointer, 
    starting from offset 0.  *)
  
  
  let name (fr: frame) : Temp.label = fr.name
  (** read the label name of the frame *)
  
  let formals (fr: frame) : access list = fr.args
  (** to extract a list of k "accesses" denoting the locations where the formal
      parameters will be kept at run time.  *)
  
  let allocLocal (fr: frame)  (escape: bool) : access =
    if escape then 
      let local_num = List.length fr.locals - 1 in
      let new_access = InFrame local_num in
        fr.locals <- new_access::fr.locals; new_access
    else (InReg (Temp.newtemp()))
  (** will return an InFrame access with an offset from the frame pointer,
      if the escape boolean is false, then the variable can be returned
      as an access to register *)
 
end