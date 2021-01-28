val anyErrors : bool ref
val sourceStream : in_channel ref
val error : Lexing.position -> string -> unit
exception Error
val impossible : string -> 'a   (* raises Error *)
val reset : unit -> unit
