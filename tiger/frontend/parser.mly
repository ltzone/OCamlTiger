%token EOF
%token <string> ID
%token <int> INT
%token <string> STRING
%token COMMA COLON SEMICOLON LPAREN RPAREN LBRACK RBRACK
%token LBRACE RBRACE DOT
%token PLUS MINUS TIMES DIVIDE EQ NEQ LT LE GT GE
%token AND OR ASSIGN
%token ARRAY IF THEN ELSE WHILE FOR TO DO LET IN END OF 
%token BREAK NIL
%token FUNCTION VAR TYPE 

%left OR
%left AND
%nonassoc EQ NEQ LT LE GT GE
%left PLUS MINUS
%left TIMES DIVIDE
%left UMINUS

%start <unit> program
%%

program	:
 | v = exp; EOF { }
 | EOF { }


// variables and expressions
exp_basic:
  | v = lvalue {}
  | NIL {}
  | i = INT {}
  | str = STRING {}
  | MINUS; e = exp_basic {} %prec UMINUS
  | e1 = exp_basic ; PLUS ; e2 = exp_basic {}
  | e1 = exp_basic ; MINUS ; e2 = exp_basic {}
  | e1 = exp_basic ; TIMES ; e2 = exp_basic {}
  | e1 = exp_basic ; DIVIDE ; e2 = exp_basic {}
  | e1 = exp_basic ; EQ ; e2 = exp_basic {}
  | e1 = exp_basic ; NEQ ; e2 = exp_basic {}
  | e1 = exp_basic ; LT ; e2 = exp_basic {}
  | e1 = exp_basic ; GT ; e2 = exp_basic {}
  | e1 = exp_basic ; LE ; e2 = exp_basic {}
  | e1 = exp_basic ; GE ; e2 = exp_basic {}
  | e1 = exp_basic ; OR ; e2 = exp_basic {}
  | e1 = exp_basic ; AND ; e2 = exp_basic {}

exp:
  | e1 = exp_basic {}
  | fun_id = ID; LPAREN; separated_list(COMMA, exp);RPAREN {}
  | v = lvalue; ASSIGN; e = exp {}
  | LPAREN ; elis = expseq ; RPAREN {}
  | IF; e1 = exp; THEN; e2 = exp; ELSE; e3 = exp {}
  | IF; e1 = exp; THEN; e2 = exp {}
  | WHILE; e1 = exp; DO; e2 = exp {}
  | FOR; iter_id = ID; ASSIGN; e1 = exp; TO; e2 = exp; DO; e3 = exp {}
  | BREAK {}
  | LET; let_decs = decs; IN; exps = expseq; END {}



expseq:
  | exps = separated_list(SEMICOLON, exp) {}

lvalue:
  | ID            {}
  | v = lvalue ; DOT; ID {}
  | v = lvalue ; LBRACK; e = exp; RBRACK {}

// declarations
decs:
  | dec_lis = list(dec)  {}

dec:
  | tydec  {}
  | vardec {}
  | fundec {}

// type declarations
tydec:
  | TYPE ; type_id = ID ; EQ ; type_def = ty {}

ty:
  | type_id = ID {}
  | LBRACE; type_fields = separated_list(COMMA, tyfield) ;RBRACE   {}
  | ARRAY; OF; type_id = ID {}

tyfield:
  | field_id = ID; COLON ; type_id = ID {}

// variable declarations
vardec:
  | VAR ; var_id = ID; ASSIGN ; e = exp {}
  | VAR ; var_id = ID; COLON; type_id = ID; e = exp {}

// function declarations
fundec:
  | FUNCTION ; fun_id = ID ; LPAREN; type_fields = separated_list(COMMA, tyfield); RPAREN ; EQ ; e = exp {}
  | FUNCTION ; fun_id = ID ; LPAREN; type_fields = separated_list(COMMA, tyfield); RPAREN ; COMMA ; type_id = ID ; EQ ; e = exp {}