---
title: 【OCaml Tiger】Chapter 2 Lexical Analysis
url: ml-lexical
date: 2020-08-07 10:01:27
tags: 
- Modern Compiler Implementation in OCaml

categories: 
- study

---

<!--more-->

[toc]

> A compiler first pulls the original language **apart** and then puts it **together** as another language. The front end of the compiler performs **analysis**; the back end does **synthesis**.

**Analysis** usually involoves lexical, syntax, and semantic analysis. Sometimes lexical analysis is integrated into the parser. However, seperating lexical analysis from parsing can eliminate the trouble of dealing with white space or comments.

## Lexical Tokens

- a lexical token = token-type (semantic values)
- non-tokens:
  - comment
  - preprocessor directive
  - macro
  - blanks, tabs and newline

## Regular Expressions
- generic re
  - symbol `a`
  - alternation `M | N`
  - concatenation `M · N`
  - epsilon `ε`
  - repetition `M*`
- abbrevations
- A lexical specifiaction should be **complete**, we can always achieve this by having a rule that matches any single character
- **Matching Rules**
  - Longest Match: `if8 = ID(if8)`
  - Rule Priority: `if8 = IF NUM(8)`

## Finite Automata
- **deterministic finite automaton(DFA)**: no two edges leaving from the same state labeled with the same symbol.
- If we can combine the spec into one single machine, lexing is done. (a DFA, each final state labeled with the token type it accepts)
- Use a transition matrix and a index-to-token array(map) to implement the DFA.
- For rule priority, directly get the first accepted result.
- For longest match, use `Last-Final` and `Input-Position-at-Last-Final` to remember the last time when the automaton was in a final state.

## Nondeterministic Finite Automata
- edges labeled with the same symbol on the same state. or edges labeled with `ε`
- the machine must **guess** correctly.

### Convert RE to NFA
- defined by induction
- any RE will have some DFA with a tail and a head. the head state is marked with `final`

### NFA to DFA
- intuition: instead of guessing which ε-transition to take, just say NFA may take any of them. *any of them* forms a set called ε-closure.
- Let $\textbf{edge}(s,c)$ be all NFA states reachable by one single edge with label $c$ from state $s$. The closure of state set $S$ is the smallest $T$ such that
  $$T = S \cup \left(\bigcup_{s\in T} \textbf{edge}(s,\epsilon) \right)$$
- calculate $T$ by iteration
  $$
  \begin{array}{l}
    T \leftarrow S; \\
    \begin{array}{ll}
    \textbf{repeat} & T' \leftarrow T \\
    & T \leftarrow T' \left( \bigcup_{s\in T'} \textbf{edge}(s,\epsilon)\right) \\
    \end{array} \\
    \textbf{until   } T = T'
  \end{array}
  $$
- Why does it work?
  - monetary
  - must terminate with finite distinct sets in the DFA.
- For eating symbols, the simulation follows a similar pattern.
  $$\textbf{DFAedge}(d,c) = \textbf{closure} \left(\bigcup_{s\in d} \textbf{edge}(s,c) \right)$$
  Here, $s$ is NFA state, $c$ is the input symbol.
- The total NFA simulation algorithm: $d$ is the set of final possible states. 
  $$
  \begin{array}{l}
    \textbf{input string: } c_1, \ldots, c_k;\\
    \textbf{start state: } s_1 ;\\
    d \leftarrow \textbf{closure}(s_1); \\
    \textbf{for } i \leftarrow 1 \textbf{ to } k:\\
    \quad \quad d \leftarrow \textbf{DFAedge}(d,c_i)
  \end{array}
  $$
- With the notion of **closure** and **DFAedge**, we can pre-calculate these sets for a particular rule.

## Implementation

Note, this part will be revisited after our parser is finished at Chapter 3 since the signature of `tokens` will be automatically generated then.

References:
- OCaml Official Manual: http://caml.inria.fr/pub/docs/manual-ocaml/lexyacc.html
- RealWorldOCaml gives a concrete example of using menhir and ocamllex to parse JSON: https://dev.realworldocaml.org/parsing-with-ocamllex-and-menhir.html

### Basic Syntax of ocamllex

The format of lexer definitions is listed as follows: (cf. http://caml.inria.fr/pub/docs/manual-ocaml/lexyacc.html)
```
{ header }
let ident = regexp …
[refill { refill-handler }]
rule entrypoint [arg1… argn] =
  parse regexp { action }
      | …
      | regexp { action }
and entrypoint [arg1… argn] =
  parse …
and …
{ trailer }
```

- *headers* and *trailer* will be straightly copied to the generated ml script
- *let ident = regexp* gives name to frequently-occurring regexps
- each *entrypoint* will become an ocaml function taking n+1 arguments, with the extra last argument being the input buffer.
    + *parse* applies the "longest match" rule
    + *shortest* applies the "shortest match" rule, usally used as a simple text processing tool
- *action*s are arbitrary OCaml expressions. To create expressions, you can use the *as* binding in the regular expression, or the *lexbuf* bound in the current buffer in the Lexing standard library.
- *refill-handler* is an advanced operation to take control of the originally silent refilling action.