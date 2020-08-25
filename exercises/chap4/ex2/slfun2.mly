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

stm: (* table -> table *)
| s1 = stm; SEMICOLON; s2 = stm
  { fun t -> s2(s1(t)) }
| s = ID; ASSIGN; e = exp
  { fun t -> let new_tab, v = e t in update (new_tab, s, v) } 
| PRINT; LPAREN; es = exps ; RPAREN
  { fun t -> (es t) }

exps: (* table -> table *)
| e = exp {fun t ->
              let new_tab, v = e t in
              print_int v;print_newline ();new_tab }
| es = exps; COMMA; e = exp
  { fun t -> let new_tab = es t in
             let now_tab = e new_tab in
             print_int (snd now_tab);print_newline ();(fst now_tab) }

exp: (* table -> table * int *)
| i = INT     { fun t -> (t, i) }
| id = ID     { fun t -> (t,t(id)) }
| e1 = exp; PLUS; e2 = exp
  { fun t -> let new_tab, v1 = e1 t in
             let cur_tab, v2 = e2 new_tab in 
              (cur_tab, v1 + v2) }
| e1 = exp; MINUS; e2 = exp
  { fun t -> let new_tab, v1 = e1 t in
             let cur_tab, v2 = e2 new_tab in 
              (cur_tab, v1 - v2) }
| e1 = exp; TIMES; e2 = exp
  { fun t -> let new_tab, v1 = e1 t in
             let cur_tab, v2 = e2 new_tab in 
              (cur_tab, v1 * v2) }
| e1 = exp; DIV; e2 = exp
  { fun t -> let new_tab, v1 = e1 t in
             let cur_tab, v2 = e2 new_tab in 
              (cur_tab, v1 / v2) }
| s = stm; COMMA; e = exp
  { fun t -> let new_tab = s t in 
             let cur_tab = e new_tab in
              (fst cur_tab, snd cur_tab) }
| LPAREN; e = exp; RPAREN
  { e }