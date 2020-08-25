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
%start <int list> program
%%

(* int list *)
program: p = prog              { snd p }

(* table * int list *)
prog: s = stm ; EOF        { s(emptytable) }

stm: (* table -> table * int list *)
| s1 = stm; SEMICOLON; s2 = stm
  { fun t -> let t1, p1 = s1 t in
             let t2, p2 = s2 t1 in
               (t2,p1@p2) }
| s = ID; ASSIGN; e = exp
  { fun t -> let new_tab, v, p = e t in
             let cur_tab = update (new_tab, s, v) in
                (cur_tab, p) } 
| PRINT; LPAREN; es = exps ; RPAREN
  { fun t ->  (es t) }

exps: (* table -> table * int list*)
| e = exp {fun t ->
              let new_tab, v, p = e t in
              (new_tab,p@[v]) }
| es = exps; COMMA; e = exp
  { fun t -> let new_tab, p1 = es t in
             let now_tab, v1, p2 = e new_tab in
              (now_tab, p1@p2@[v1]) }

exp: (* table -> table * int * int list *)
| i = INT     { fun t -> (t, i, []) }
| id = ID     { fun t -> (t,t(id), []) }
| e1 = exp; PLUS; e2 = exp
  { fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 + v2, p1@p2) }
| e1 = exp; MINUS; e2 = exp
  { fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 - v2, p1@p2) }
| e1 = exp; TIMES; e2 = exp
  { fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 * v2, p1@p2) }
| e1 = exp; DIV; e2 = exp
  { fun t -> let new_tab, v1, p1 = e1 t in
             let cur_tab, v2, p2 = e2 new_tab in 
              (cur_tab, v1 / v2, p1@p2) }
| s = stm; COMMA; e = exp
  { fun t -> let new_tab, p1 = s t in 
             let cur_tab, v, p2 = e new_tab in
              (cur_tab, v, p1@p2) }
| LPAREN; e = exp; RPAREN
  { e }