module type AbstractFrame = sig (* same definition in frame.mli *)
   
  type access
  (** describes the formals and locals that may be in the frame or registers
   an example implementation will be like *)
  
  type frame
  (** holds information about formal parameters and local variables 
  allocated to a frame *)

  type frag = PROC of { body: Ast.Tree.stm; (** the result returned from [procEntryExit1] *)
                         frame: frame        (** machine-specific information about local variables and parameters *) 
                       } (** a descriptor for the function containing the necessary
                             information produced by the Translate phase *)
             | STRING of Ast.Temp.label * string  

  val outermost_frame : frame
  
  val newFrame :  Ast.Temp.label (* name *) -> bool list (* formals *) -> frame 
  
  val name : frame -> Ast.Temp.label
  
  val formals: frame -> access list
  
  val allocLocal : frame -> bool -> access

  val fp : Ast.Temp.temp

  val word_size : int

  val exp : access -> Ast.Tree.exp -> Ast.Tree.exp
  (** translate a Frame access into Tree expression,
      @param access is the access to the variable to be visited
      @param exp is the static link of the current frame
      @return the expression of the target variable 

      Note that [exp] is used in case of static links, so that
      the base of access can be customized
  *)

  val string : Ast.Temp.label -> string -> string
  (** takes in a label definition and a string constant,
      the function should generate the assembly-language instructions
      required to define and initialize a string literal
  *)

 
end


module MIPSFrame : AbstractFrame = struct
   
  type access = InFrame of int        (** access to static memory, indicated by
                                           offset (of word) from the frame pointer, 
                                          + indicates higher address, 
                                          - indicates lower address *)
              | InReg of Ast.Temp.temp    (** access to temporaries *)
  (** describes the formals and locals that may be in the frame or registers  *)
  
  type frame = {name: Ast.Temp.label; args: access list; mutable locals: access list} 
  (* TODO not sure is correct for locals *)
  (** holds information about formal parameters and local variables 
  allocated to a frame *)

  type frag = PROC of { body: Ast.Tree.stm; (** the result returned from [procEntryExit1] *)
                         frame: frame        (** machine-specific information about local variables and parameters *) 
                       } (** a descriptor for the function containing the necessary
                             information produced by the Translate phase *)
             | STRING of Ast.Temp.label * string  

  let outermost_frame = {name=Ast.Temp.newlabel (); args=[]; locals=[]}
  
  let newFrame (name: Ast.Temp.label) (formals: bool list) : frame = 
    let rec walk_formals cur_idx rem_formals =
      match rem_formals with
      | [] -> []
      | true :: formals' ->
          (InFrame cur_idx) :: walk_formals (cur_idx + 1) formals'
      | false :: formals' ->
          (InReg (Ast.Temp.newtemp())) :: walk_formals cur_idx formals'  in
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
  
  
  let name (fr: frame) : Ast.Temp.label = fr.name
  (** read the label name of the frame *)
  
  let formals (fr: frame) : access list = fr.args
  (** to extract a list of k "accesses" denoting the locations where the formal
      parameters will be kept at run time.  *)
  
  let allocLocal (fr: frame)  (escape: bool) : access =
    if escape then 
      let local_num = List.length fr.locals - 1 in
      let new_access = InFrame local_num in
        fr.locals <- new_access::fr.locals; new_access
    else (InReg (Ast.Temp.newtemp()))
  (** will return an InFrame access with an offset from the frame pointer,
      if the escape boolean is false, then the variable can be returned
      as an access to register *)
  
  let fp = Ast.Temp.newtemp ()
  (* TODO: not sure this implementation is reasonable *)

  let word_size = 8

  let exp (acc:access) (fp_exp: Ast.Tree.exp) : Ast.Tree.exp = 
    match acc with
    | InReg n -> TEMP n
    | InFrame k -> MEM (BINOP (PLUS, CONST (k * word_size), fp_exp))

  let string (lab:Ast.Temp.label) str =
    let lab_name = Ast.Temp.name lab in
      lab_name ^ ":   .ascii \"" ^ str ^ "\"\n"

 
end