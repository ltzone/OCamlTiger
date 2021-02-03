(** Temp module manages different sets of names by
    giving abstract name [temp] for local variables,
    and [label] for static memory addresses  *)


type temp
val newtemp : unit -> temp
val makestring: temp -> string

module Table : sig
  
end

type label = Ast.Symbol.symbol
val newlabel : unit -> label
val namedlabel : string -> label