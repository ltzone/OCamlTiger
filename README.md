# OcamlTiger
Solution to "Modern Compiler Implementation in ML" implemented in Ocaml

![RoadMap](https://www.cs.princeton.edu/~appel/modern/text/prefdag.gif)

## Environment

- WSL:Ubuntu 18.04
- dune 2.6.2
- OCaml 4.10.0

## My Progress

### Chapter 1 Introduction
- [x] Reading (*January 2020*)
- [x] Programming: [Straight-Line Interpreter](exercises/chap1/slp.ml) (*January 2020*)
- [ ] Exercises 
  - [x] [Basic BST](exercises/chap1/bst.ml) (*January 2020*)
  - [ ] Balanced BST

### Chapter 2 Lexical Analysis
- [x] Reading (*May 2020*)
  - [x] [Foundation Notes](https://www.ltzhou.com/ml-lexical/) (*July 2020*)
  - [ ] Implementation Notes (will be revisited after parser)
- [ ] Programming: use OCamllex to generate a lexer for Tiger Language
- [ ] Exercises

### Chapter 3 Parsing
- [x] Reading (*Aug 10th, 2020*)
  - [ ] Foundation Notes
  - [x] [Implementation Notes](https://www.ltzhou.com/ml-parser/#implementation) (*Aug 15th, 2020*)
- [x] Programming: use Menhir to write the parsing rule for Tiger Language 
  - [x] [Basic Rules](tiger/lib/frontend/parser.mly)  (*Aug 15th, 2020*)
  - [ ] (Optional) Implement some error recovery strategies
- [ ] Exercises

### Chapter 4 Abstract Syntax
- [x] Reading (*Aug 14th, 2020*)
  - [ ] Notes
- [ ] Programming: Add semantic actions to the parser
  - [x] Transplant the `Symbol` [library](tiger/lib/ast/symbol.ml) (a module to turn string into symbols)  (*Aug 15th, 2020*)
- [ ] Exercises


## References

- Textbook: http://cs.princeton.edu/~appel/modern/ml/

- Ocaml Tutorial: https://ocaml.org/learn/tutorials/index.zh.html

- Real World OCaml: http://dev.realworldocaml.org/

- Ocaml Standard Library: http://caml.inria.fr/pub/docs/manual-ocaml/libref/index.html

- SML to Ocaml CheatSheet: https://people.mpi-sws.org/~rossberg/sml-vs-ocaml.html



