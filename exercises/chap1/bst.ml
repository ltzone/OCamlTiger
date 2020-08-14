(** Exercise 1.1 on Page 12 : Binary Search Tree*)
type key = string;;

(* type tree = LEAF
          | TREE of tree * key * tree

let empty = LEAF;;

let rec insert (key,tree) =
    match tree with
    | LEAF -> TREE (LEAF, key, LEAF)
    | TREE (l,k,r) ->
        if key<k
        then TREE(insert(key,l),k,r)
        else if key>k
        then TREE(l,k,insert(key,r))
        else TREE(l,key,r)

(* a. Implement a member function *)
let rec member key tree =
    match tree with
    | LEAF -> false
    | TREE (l,k,r) ->
        if key<k
        then member key l
        else if key>k
        then member key r
        else if String.equal key k
        then true
        else false *)

(* b. extend to a mapping of keys to bindings *)
type 'a tree = LEAF
             | TREE of ('a tree * (key * 'a) * 'a tree);;

let rec insert (tree, key, a) =
    match tree with
    | LEAF -> TREE (LEAF, (key,a), LEAF)
    | TREE (l,(k,knode),r) ->
        if key<k
        then TREE(insert(l,key,a),(k,knode),r)
        else if key>k
        then TREE(l,(k,knode),insert(r,key,a))
        else TREE(l,(key,a),r)   

let rec lookup (tree, key) =
    match tree with
    | LEAF -> -1
    | TREE (l,(k,knode),r) ->
        if key<k
        then lookup (l, key)
        else if key>k
        then lookup (r, key)
        else if String.equal key k
        then knode
        else -1


(* c. demonstrate the behavior of different inserting sequences *)

(* Omitted *)

(* *d. balanced search tree *)

(* Omitted *)

(*  Test of ex.a
let main () =
    let arg1 = Sys.argv.(1) in
    let arg2 = Sys.argv.(2) in
        let mytree1 = insert (arg1,LEAF) in
        let mytree2 = insert (arg2,mytree1) in
        if (member "1" mytree1)
            then print_string "Yes"
            else print_string "No";
        print_newline ();
        if (member "1" mytree2)
            then print_string "Yes"
            else print_string "No";
        print_newline ();
        exit 0;;
main();; *)

(* Test of ex.b *)
let main () =
    let arg1 = Sys.argv.(1) in
    let arg2 = Sys.argv.(2) in
        let mytree1 = insert (LEAF,arg1,1) in
        let mytree2 = insert (mytree1,arg2,2) in
        print_string (string_of_int (lookup (mytree1, "a")));
        print_newline ();
        print_string (string_of_int (lookup (mytree2, "a")));
        print_newline ();
        print_string (string_of_int (lookup (mytree2, "b")));
        print_newline ();
        exit 0;;
main();;