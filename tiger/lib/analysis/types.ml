type unique = unit ref

type ty = 
  | RECORD of (Ast.Symbol.symbol * ty) list * unique
  | NIL
  | INT
  | STRING
  | ARRAY of ty * unique
  | NAME of Ast.Symbol.symbol * ty option ref
  | UNIT
