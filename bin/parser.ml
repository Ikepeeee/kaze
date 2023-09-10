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
  | LPAREN1
  | RPAREN1
  | EQ
  | EOL

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  262 (* PLUS *);
  263 (* MINUS *);
  264 (* TIMES *);
  265 (* DIV *);
  266 (* COMMA *);
  267 (* ARROW *);
  268 (* LPAREN1 *);
  269 (* RPAREN1 *);
  270 (* EQ *);
  271 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* BOOL *);
  258 (* INT *);
  259 (* FLOAT *);
  260 (* STRING *);
  261 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\004\000\
\004\000\004\000\003\000\003\000\003\000\000\000"

let yylen = "\002\000\
\004\000\007\000\001\000\001\000\001\000\001\000\003\000\003\000\
\003\000\003\000\003\000\002\000\004\000\007\000\001\000\003\000\
\001\000\000\000\003\000\001\000\000\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\022\000\000\000\000\000\000\000\000\000\
\003\000\005\000\004\000\006\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\012\000\000\000\000\000\000\000\000\000\
\000\000\000\000\001\000\019\000\000\000\000\000\000\000\000\000\
\000\000\007\000\000\000\000\000\010\000\011\000\000\000\000\000\
\013\000\000\000\002\000\016\000\000\000\000\000\014\000"

let yydgoto = "\002\000\
\004\000\022\000\008\000\031\000"

let yysindex = "\014\000\
\024\255\000\000\253\254\000\000\026\255\000\255\022\255\020\255\
\000\000\000\000\000\000\000\000\025\255\000\255\023\255\056\255\
\026\255\031\255\000\255\000\000\039\255\086\255\000\255\000\255\
\000\255\000\255\000\000\000\000\000\255\110\255\034\255\004\255\
\035\255\000\000\013\255\013\255\000\000\000\000\060\255\000\255\
\000\000\027\255\000\000\000\000\000\255\094\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\036\255\000\000\037\255\000\000\
\000\000\000\000\000\000\000\000\046\255\000\000\000\000\000\000\
\036\255\000\000\020\255\000\000\036\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\044\255\000\000\102\255\
\000\000\000\000\066\255\076\255\000\000\000\000\000\000\020\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\250\255\245\255\252\255"

let yytablesize = 120
let yytable = "\016\000\
\009\000\010\000\011\000\012\000\013\000\028\000\014\000\020\000\
\005\000\033\000\006\000\015\000\030\000\017\000\001\000\019\000\
\035\000\036\000\037\000\038\000\025\000\026\000\039\000\009\000\
\010\000\011\000\012\000\013\000\003\000\014\000\007\000\017\000\
\018\000\030\000\021\000\044\000\019\000\045\000\046\000\009\000\
\010\000\011\000\012\000\032\000\029\000\014\000\041\000\042\000\
\021\000\020\000\021\000\015\000\015\000\015\000\015\000\015\000\
\017\000\000\000\015\000\000\000\015\000\023\000\024\000\025\000\
\026\000\023\000\024\000\025\000\026\000\000\000\027\000\008\000\
\008\000\000\000\043\000\008\000\000\000\000\000\008\000\000\000\
\008\000\009\000\009\000\000\000\000\000\009\000\000\000\000\000\
\009\000\000\000\009\000\023\000\024\000\025\000\026\000\000\000\
\000\000\000\000\034\000\023\000\024\000\025\000\026\000\000\000\
\000\000\000\000\047\000\015\000\015\000\015\000\015\000\000\000\
\000\000\000\000\015\000\023\000\024\000\025\000\026\000\040\000"

let yycheck = "\006\000\
\001\001\002\001\003\001\004\001\005\001\017\000\007\001\014\000\
\012\001\021\000\014\001\012\001\019\000\010\001\001\000\012\001\
\023\000\024\000\025\000\026\000\008\001\009\001\029\000\001\001\
\002\001\003\001\004\001\005\001\005\001\007\001\005\001\010\001\
\013\001\040\000\012\001\040\000\012\001\011\001\045\000\001\001\
\002\001\003\001\004\001\005\001\014\001\007\001\013\001\013\001\
\013\001\013\001\012\001\006\001\007\001\008\001\009\001\010\001\
\013\001\255\255\013\001\255\255\015\001\006\001\007\001\008\001\
\009\001\006\001\007\001\008\001\009\001\255\255\015\001\006\001\
\007\001\255\255\015\001\010\001\255\255\255\255\013\001\255\255\
\015\001\006\001\007\001\255\255\255\255\010\001\255\255\255\255\
\013\001\255\255\015\001\006\001\007\001\008\001\009\001\255\255\
\255\255\255\255\013\001\006\001\007\001\008\001\009\001\255\255\
\255\255\255\255\013\001\006\001\007\001\008\001\009\001\255\255\
\255\255\255\255\013\001\006\001\007\001\008\001\009\001\010\001"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  COMMA\000\
  ARROW\000\
  LPAREN1\000\
  RPAREN1\000\
  EQ\000\
  EOL\000\
  "

let yynames_block = "\
  BOOL\000\
  INT\000\
  FLOAT\000\
  STRING\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 19 "bin/parser.mly"
                            ( Assign (_1, _3) )
# 146 "bin/parser.ml"
               : Ast.assign))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'args) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 20 "bin/parser.mly"
                                           ( Assign (_1, Func (_3, _6)) )
# 155 "bin/parser.ml"
               : Ast.assign))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 24 "bin/parser.mly"
                            ( VBool (_1) )
# 162 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 25 "bin/parser.mly"
                            ( VFloat (_1) )
# 169 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 26 "bin/parser.mly"
                            ( VInt (_1) )
# 176 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 27 "bin/parser.mly"
                            ( VString (_1) )
# 183 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 28 "bin/parser.mly"
                            ( _2 )
# 190 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 29 "bin/parser.mly"
                            ( BinaryOp (_1, "+", _3) )
# 198 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 30 "bin/parser.mly"
                            ( BinaryOp (_1, "-", _3) )
# 206 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 31 "bin/parser.mly"
                            ( BinaryOp (_1, "*", _3) )
# 214 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 32 "bin/parser.mly"
                            ( BinaryOp (_1, "/", _3) )
# 222 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 33 "bin/parser.mly"
                            ( UnaryOp ("-", _2) )
# 229 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'params) in
    Obj.repr(
# 34 "bin/parser.mly"
                                 ( FuncApp (_1, _3) )
# 237 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'args) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 35 "bin/parser.mly"
                                                    ( Func (_3, _6) )
# 245 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 36 "bin/parser.mly"
          ( Var (_1) )
# 252 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'params) in
    Obj.repr(
# 40 "bin/parser.mly"
                      ( List.concat([[_1]; _3]) )
# 260 "bin/parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 41 "bin/parser.mly"
         ( [_1] )
# 267 "bin/parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "bin/parser.mly"
    ( [] )
# 273 "bin/parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'args) in
    Obj.repr(
# 46 "bin/parser.mly"
                     ( List.concat([[_1]; _3]) )
# 281 "bin/parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "bin/parser.mly"
          ( [_1] )
# 288 "bin/parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "bin/parser.mly"
    ( [] )
# 294 "bin/parser.ml"
               : 'args))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.assign)
