---
title: 【OCaml Tiger】Chapter 4 Abstract Syntax
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