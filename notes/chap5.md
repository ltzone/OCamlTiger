---
title: 【OCaml Tiger】Chapter 5 Semantic Actions
url: ml-semantic
date: 2020-08-20 15:04:09
tags: 
- Modern Compiler Implementation in OCaml

categories: 
- Study

---

The semantic analysis phase of a compiler connects variable definitions to their uses, does type check and translates the AST into a simpler representation for generating machine code.

[toc]

<!--more-->

## Symbol Tables

- environment: a set of bindings, aka *tables*
- each local variable has a scope, environment should support updating and discarding
  - Functional Style: non-destructive, old tables can be picked up from past
  - Imperative Style: destructive, cannot be restored without auxiliary data structure
- Both styles are capable of compiling any language
- Some languages may require several active environments (in case of multiple modules, class, etc)

### Efficient Imperative Symbol Tables
- hash table
- `pop` operation will work when bindings are inserted and popped in a stacklike fashion

### Efficient Functional Symbol Tables
- hash table is not efficient for non-destructive updates, since every bucket will be re-pointed
- search tree is better, we don't need to copy the whole tree

### Symbols in Tiger Compiler
- Motivation:
  - quick equality-check
  - extracting hash-key fast (to map symbols to other things)
  - compare symbols fast (arbitrary ordering in case for BST)
- Implementation
  - destructive-update hash table `string -> symbol`
  - `Environment = 'a BST`, where `'a` can be any binding, the key of the table is `symbol` (i.p. the `int` field in the `symbol`)
  - `symbol = string * int`, `int` is given according to the occurence order, to support BST
  - Note the HashMap is hidden in the `symbol: string -> symbol` interface from the `.mli` signature, simply to look up the integer for a given string.

```OCaml
(** symbol.mli *)
type symbol
val symbol : string -> symbol
val name : symbol -> string

type 'a table
val empty : 'a table
val enter : 'a table * symbol * 'a -> 'a table
val look  : 'a table * symbol -> 'a option 
```


### Imperative Style Symbol Tables

```OCaml
(** symbol.mli *)
type 'a table
val new : unit -> 'a table
val enter : 'a table * symbol * 'a -> unit
val look  : 'a table * symbol -> 'a option

val beginScope : 'a table -> unit
val endScope: 'a table -> unit
```

- `beginScope` and `endScope` come in pairs to handle the undo requirements of destuctive update.
- and the undo operation have to work with a stack order
- we also need an auxiliary stack, when `beginScope`, a special marker is pushed onto the table and `endScope` will pop until the marker.


## Bindings for the Tiger Compiler

### Types

```OCaml
type unique = unit ref
(* since each ref is unique, we can test record for equal ones *)

type ty = 
  | INT
  | STRING
  | RECORD of (Ast.Symbol.symbol * ty) list * unique (* array elements and unique marker*)
  | ARRAY of ty * unique
  | NIL (* any type *)
  | UNIT (* no value returned *)
  | NAME of Ast.Symbol.symbol * ty option ref
  (* provides holder for mutually defined types *)
  (* where NAME(sym, ref(Some t)) is equivalent to type t *)
  (* and NAME(sym, ref(None)) is just place-holder *)
```

- equal types:
  - this is illegal in tiger, since every record is unique.
    ```Tiger
    let type a = {x:int, y:int }
        type b = {x:int, y:int } (* a type declaration *)
        var i : a := ...
        var j : b := ...
    in i := j
    end
    ```
  - this is legal
    ```Tiger
    let type a = {x:int, y:int }
        type b = a (* a type expression *)
        var i : a := ...
        var j : b := ...
    in i := j
    end
    ```

### Environments

- One environment will not suffice
  ```Tiger
  let type a = int
      var a : a := 5
      var b : a := a
    in b + a
  end
  ```
- we need both a **type environment** and **value environment**
  - `tenv: Types.ty Symbol.table = symbol -> ty`
  - `venv: enventry Symbol.table = symbol -> enventry`
  - where `enventry = VarEntry of ty | Fun Entry of formals type * result type`



## Implementation


### Type-Checking Expressions



### Type-Checking Declarations

