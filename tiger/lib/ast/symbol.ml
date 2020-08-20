
type symbol = string * int

(* Use a Hash Table to check whether a string exists *)
module H = Hashtbl

let nextsym = ref 0
let sizeHint = 128
let hashtable : (string,int) H.t = 
  H.create sizeHint

let symbol name =
    match H.find_opt hashtable name
    with Some i -> (name,i)
      | None -> 
          let i = !nextsym in 
            nextsym := i+1;
          H.add hashtable name i;
          (name,i)

let name (s,_) = s

let getInt (_,n) = n

(* Use a balanced BST to store and index strings *)
module IntBinaryMap = Map.Make(Int)

type 'a table = 'a IntBinaryMap.t
let empty = IntBinaryMap.empty
let enter (t, k, a) = IntBinaryMap.add (getInt k) a t
let look (t, k) = IntBinaryMap.find_opt (getInt k) t
