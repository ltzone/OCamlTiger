all:
	menhir slfun2.mly
	ocamllex lexer.mll
	dune exec ./driver.exe
