%token <int> INT
%token PLUS MINUS TIMES DIV
%token LPAREN RPAREN
%token EOL
%left PLUS MINUS        /* lowest precedence */
%left TIMES DIV         /* medium precedence */
%nonassoc UMINUS        /* highest precedence */
%start main             /* the entry point */
%type <Ast.expr> main
%%
main:
    expr EOL                { $1 }
;
expr:
    INT                     { VInt ($1) }
  | LPAREN expr RPAREN      { $2 }
  | expr PLUS expr          { BinaryOp ($1, "+", $3) }
  | expr MINUS expr         { BinaryOp ($1, "-", $3) }
  | expr TIMES expr         { BinaryOp ($1, "*", $3) }
  | expr DIV expr           { BinaryOp ($1, "/", $3) }
  | MINUS expr %prec UMINUS { UnaryOp ("-", $2) }
;
