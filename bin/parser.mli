type token =
  | BOOL of (bool)
  | INT of (int)
  | FLOAT of (float)
  | STRING of (string)
  | IDENT of (string)
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | COMMA
  | ARROW
  | BSLASH
  | LPAREN1
  | RPAREN1
  | EQ
  | EOL

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.assign
