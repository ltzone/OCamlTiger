

type temp = int

let temps = ref 100

let newtemp () =
  let t = !temps in
    temps := t + 1;
    t
    
let makestring t = "t" ^ Int.to_string t


module Table  = Table.IntMapTable(struct
  type key = temp
  let getInt n = n
end)


type label = Symbol.symbol

let postinc x =
  let i = !x in
  x := i + 1; i

let labs = ref 0


let newlabel () = Symbol.symbol("L" ^ Int.to_string (postinc labs))

let namedlabel = Symbol.symbol

