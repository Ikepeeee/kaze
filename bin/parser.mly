%token
%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token <string> STRING
%token <string> IDENT
%token PLUS MINUS TIMES DIV
%token COMMA ARROW BSLASH
%token LPAREN1 RPAREN1
%token EQ
%token EOL
%right ARROW
%left COMMA
%left PLUS MINUS        /* lowest precedence */
%left TIMES DIV         /* medium precedence */
%nonassoc UMINUS        /* highest precedence */
%start main             /* the entry point */
%type <Ast.assign> main
%%
main:
  | IDENT EQ expr EOL       { Assign ($1, $3) }
  | IDENT LPAREN1 args RPAREN1 EQ expr EOL { Assign ($1, Func ($3, $6)) }
;

expr:
  | BOOL                    { VBool ($1) }
  | FLOAT                   { VFloat ($1) }
  | INT                     { VInt ($1) }
  | STRING                  { VString ($1) }
  | LPAREN1 expr RPAREN1    { $2 }
  | expr PLUS expr          { BinaryOp ($1, "+", $3) }
  | expr MINUS expr         { BinaryOp ($1, "-", $3) }
  | expr TIMES expr         { BinaryOp ($1, "*", $3) }
  | expr DIV expr           { BinaryOp ($1, "/", $3) }
  | MINUS expr %prec UMINUS { UnaryOp ("-", $2) }
  | IDENT LPAREN1 params RPAREN1 { FuncApp ($1, $3) }
  | BSLASH LPAREN1 args RPAREN1 ARROW expr { Func ($3, $6) }
  | IDENT { Var ($1) }
;

params:
  | params COMMA params { List.concat([$1; $3]) }
  | expr { [$1] }
  | { [] }
;

args:
  | args COMMA args { List.concat([$1; $3]) }
  | IDENT { [$1] }
  | { [] }
;
