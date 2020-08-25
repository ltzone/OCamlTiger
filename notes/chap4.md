---
title: 【OCaml Tiger】Chapter 4 Abstract Syntax
url: ml-ast
date: 2020-08-20 09:53:04
tags: 
- Modern Compiler Implementation in OCaml

categories: 
- Study

---

The semantic actions of a parser can do useful things with the phrases that are parsed.


[toc]

<!--more-->

## Semantic actions

### Recursive Descent Parsers

semantic actions are the returned values of parsers

### ML-Yacc Generated Parsers

semantic actions are code fragments.
- To implement the semantic actions, Yacc will maintain a stack parallel to the token stack, in order to store the semantic values of previous parsing results.

### A mini-interpreter in semantic actions
- PROGRAM 4.4: an arithmetic evaluator implemented in the notion of denotations `f: table (to look up for identifiers) -> integer (exp result)`
  - an error to be resolved: assignment inside an expression has no permanent effect

### An imperative interpreter in semantic actions
- Note that in practice, the reductions and semantic actions are executed in a **deterministic and predictable** order, i.p. _post order_
- so it make sense to introduce some side effects, (like a global symbol table) to facilitate the interpreter


## Abstract parse trees

To improve modularity, it is better to seperate the syntax and semantics with a parse tree
- Abstract vs concrete: eliminate unnecessary punctuation tokens which convey no more information than what we can get from the tree
- remember position in order to report errors in a single-path compiler

### Abstract Syntax for Tiger
- `e1 & e2` is translated as `if e1 then e2 else 0`
- `-i` = `0 - i`
- we can keep the abstract data type smaller, but harder to produce useful error messages



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
   - For now, there are only one shift/reduce conflicts, they are currently resolved by shifting
      - `if then ... else ...`
   - Other conflicts such as `array [exp] of ... ` have been resolved by explicitly adding dummy rules


## Exercises

### 4.1 abstract syntax for regular expressions
```OCaml
type re =
| Epsilon
| Symbol of string
| Alter of re * re
| Concat of re * re
| Repetititon of re 
```

### 4.2 Fix Straight-Line Interpreter

- [Lexer](../exercises/chap4/prog4.4/lexer.mll)
- [Orginal Parsing Rules (Slfun)](../exercises/chap4/prog4.4/slfun.mly)
- [Fixed Semantic Actions (Slfun2)](../exercises/chap4/ex2/slfun2.mly)

To run the original semantic actions (Program 4.4 on textbook),  run `make` in the command line and you will see the result of the following program is 17.
```
a := 6; a := ( a := a+1, a+4) + a; print ( a )
```

If you run `Slfun2`, you may check the result is 18, which is correct.

### 4.3 & 4.4 Make Straight-Line Interpreter Purely Functional

- [Purely Functional Semantic Action Rules (Slfun3)](../exercises/chap4/ex4/slfun3.mly)

This interpreter collects the print result into a list and output at last, the rule is inherited from 4.2.