---
title: 【OCaml Tiger】Chapter 4 Abstract Syntax
url: ml-ast
date: 2020-08-20 09:53:04
tags: 
- Modern Compiler Implementation in OCaml

categories: 
- Study

---


[toc]

<!--more-->


## Semantic actions


## Abstract parse trees


## Implementation

In this chapter, we will add semantic actions to our parser to generated the abstract syntax to our parser. The implementation is based on the parsing grammar we have written in Chapter 3.

1. To improve the efficiency in processing `ID` (string type), we implement a `Symbol` module, which use HashTable to check whether an id exists in the program and balanced BST to index the ids based on their occurence order. The signature of the `Symbol` module is listed as follows:
   ```OCaml
   type symbol
   val symbol : string -> symbol    (* find/create the symbol of a string *)
   val name : symbol -> string      (* return the id of a symbol *)
   type 'a table                    (* BST of a' *)
   val empty : 'a table             (* an empty BST of a' *)
   val enter : 'a table * symbol * 'a -> 'a table  
   (* new element symbol with index a' into table *)
   val look  : 'a table * symbol -> 'a option      
   (* look up symbol in the table find a' *)
   ```
   We transform the ML code and library into OCaml.
2. Then, we translate the ML type definition of the AST into OCaml type. A few things to note:
   - `ref` is not available in records, we use `mutable` field instead
   - remove the ML `structure` wrapping since a `ml` file in OCaml already represents a module
   - some Syntax differences between ML and OCaml (ref. http://people.mpi-sws.org/~rossberg/sml-vs-ocaml.html)
3. Add semantic actions to `mly` file
   - use `$startofs` to add position information into the AST, the extra position fields in the token is no longer needed   
   - add the following header so that the AST and Symbol Module can be used as an abbreviate
     ```OCaml
     %{
      module A = Ast.Absyn
      module S = Ast.Symbol
     %}
     ```
   - For now, there are three shift/reduce conflicts, they are currently resolved by shifting
      - `if then ... else ...`
      - `fundec list` and `dec list`
      - `tydec list` and `dec list`
