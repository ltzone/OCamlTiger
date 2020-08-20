all:
	ocamllex lib/frontend/lexer.mll
	menhir lib/frontend/parser.mly --explain
	dune build

utop:
	make all
	dune utop