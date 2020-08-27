val anyErrors : bool ref
val fileName : string ref
val lineNum : int ref
val linePos : int list ref
val sourceStream : in_channel ref
val error : int -> string -> unit
exception Error
val impossible : string -> 'a   (* raises Error *)
val reset : unit -> unit
