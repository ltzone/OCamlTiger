%{
  let update (table,id,num) : string -> int =
     fun j -> if j=id then num else table(j)
  let emptytable : string -> int =
     fun j -> raise (Failure ("uninitialized var: "^ j))
%}

%token <int>INT
%token <string>ID
%token PLUS MINUS TIMES DIV ASSIGN PRINT LPAREN RPAREN COMMA SEMICOLON EOF
%nonassoc COMMA
%right SEMICOLON
%left PLUS MINUS
%left TIMES DIV
%start <unit> program
%%

program: prog              { () }

prog: s = stm ; EOF        { s(emptytable) }

stm:
| s1 = stm; SEMICOLON; s2 = stm
  { fun t -> s2(s1(t)) }
| s = ID; ASSIGN; e = exp
  { fun t -> update (t, s, e(t)) }
| PRINT; LPAREN; es = exps ; RPAREN
  { fun t -> (es t; t) }

exps:
| e = exp {fun t -> print_int (e t);print_newline () }
| es = exps; COMMA; e = exp
  { fun t -> es t; print_int (e t);print_newline () }

exp:
| i = INT     { fun _ -> i }
| id = ID     { fun t -> t(id) }
| e1 = exp; PLUS; e2 = exp
  { fun t -> e1(t) + e2(t) }
| e1 = exp; MINUS; e2 = exp
  { fun t -> e1(t) - e2(t) }
| e1 = exp; TIMES; e2 = exp
  { fun t -> e1(t) * e2(t) }
| e1 = exp; DIV; e2 = exp
  { fun t -> e1(t) / e2(t) }
| s = stm; COMMA; e = exp
  { fun t -> e(s(t)) }
| LPAREN; e = exp; RPAREN
  { e }