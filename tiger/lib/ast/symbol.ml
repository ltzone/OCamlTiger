
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

(* Use a balanced BST to store and index strings *)
module Table = Table.IntMapTable(struct 
        type key = symbol
				let getInt (_,n) = n end)

type 'a table= 'a Table.table
let empty = Table.empty
let enter = Table.enter
let look = Table.look