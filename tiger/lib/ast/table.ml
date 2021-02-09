module IntBinaryMap = Map.Make(Int)

module type TABLE = sig
  type key
  type 'a table
  val empty : 'a table
  val enter : 'a table * key * 'a -> 'a table
  val look  : 'a table * key -> 'a option
end


module IntMapTable (X: sig 
    type key
    val getInt: key -> int end) : TABLE with type key = X.key =
struct

type key=X.key

type 'a table = 'a IntBinaryMap.t
let empty = IntBinaryMap.empty
let enter (t,k,a) = IntBinaryMap.add (X.getInt k) a t
let look (t,k) = IntBinaryMap.find_opt (X.getInt k) t
end
