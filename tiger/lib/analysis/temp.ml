

type temp = int

let temps = ref 100

let newtemp () =
  let t = !temps in
    temps := t + 1;
    t
    
let makestring t = "t" ^ Int.to_string t

module Table = Map.Make(Int)

type label = Ast.Symbol.symbol

let postinc x =
  let i = !x in
  x := i + 1; i

let labs = ref 0


let newlabel () = Ast.Symbol.symbol("L" ^ Int.to_string (postinc labs))

let namedlabel = Ast.Symbol.symbol

