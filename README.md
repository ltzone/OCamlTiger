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
  - [x] Foundation Notes(https://www.ltzhou.com/ml-ast) (*Aug 25th, 2020*)
  - [x] [Implementation Notes](https://www.ltzhou.com/ml-ast/#implementation) (*Aug 20th, 2020*)
- [ ] Programming: Add semantic actions to the parser
  - [x] Transplant the `Symbol` [library](tiger/lib/ast/symbol.ml) (a module to turn string into symbols)  (*Aug 15th, 2020*)
  - [x] Semantic Actions: [build AST](tiger/lib/frontend/parser.mly) (*Aug 20th, 2020*)
  - [x] [Driver](tiger/driver/util.ml) and [Test Cases](tiger/testcases) (*Aug 20th, 2020*)
  - [x] Explicitly resolve shift/reduce conflicts (*Aug 20th, 2020*)
  - [ ] More Error Recovery, a better `pos` setting
- [ ] Exercises
  - [x] 4.1 Regular Expression Abstract Syntax (*Aug 25th, 2020*)
  - [x] 4.2 ~ 4.4 Straight Line Interpreter implemented in Menhir through semantic actions (*Aug 25th, 2020*)
  - [ ] 4.5 Straight Line Interpreter implemented in Recursive Descent
  - [ ] 4.6 rewrite recursion direction

> To Run the parser, `cd tiger; make; dune utop`, then execute `Util.parse_file "testcases/yourtestfile.tig"` in utop to check the parsed syntax tree

### Chapter 5 Semantic Actions
- [x] Reading
  - [x] [Foundation Notes](https://www.ltzhou.com/ml-semantic/) (*Aug 27th, 2020*)
  - [ ] Implementation Notes
- [x] Programming Part A: (*Sept 2nd, 2020*)
  - [x] [Simple Type Checker](tiger/lib/analysis/semant.ml) (*Aug 31st, 2020*)
  - [x] [Declaration Processor](tiger/lib/analysis/semant.ml) (*Sept 2nd, 2020*)
- [ ] Programming Part B:
  - [x] [Handle (Mutually) Recursive Functions, Types Declarations](tiger/lib/analysis/semant.ml) (*Sept 2nd, 2020*)
  - [ ] Correct Nesting of break statements
  - [ ] Driver and TestCases
- [ ] Exercises
  - [ ] Improve HashTable Implementation
  - [ ] efficient data structure for environment "adding"
  - [ ] cycle of type definitions

> To Run the type checker, `cd tiger; make; dune utop`, then execute `Util.semant_check "testcases/yourtestfile.tig"` in utop to type check the tiger program

## References

- Textbook: http://cs.princeton.edu/~appel/modern/ml/

- Ocaml Tutorial: https://ocaml.org/learn/tutorials/index.zh.html

- Real World OCaml: http://dev.realworldocaml.org/

- Ocaml Standard Library: http://caml.inria.fr/pub/docs/manual-ocaml/libref/index.html

- SML to Ocaml CheatSheet: https://people.mpi-sws.org/~rossberg/sml-vs-ocaml.html



