%{
  let table = ref ([]: (string * int) list)
  let update (id,v) = table := (id,v)::!table
  let lookup id = 
    let rec f = function
          | (s,v)::rest -> if s=id then v else f reset
          | f [] -> raise Failure ("uninitialized var:" ^ id)
%}

%token <int>INT
%token <string>ID
%token PLUS MINUS TIMES DIV ASSIGN PRINT LPAREN RPAREN COMMA SEMICOLON EOF
%right SEMICOLON
%left PLUS MINUS
%left TIMES DIV
%%
prog: stm   {}

stm:
| stm SEMICOLON stm
