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

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  262 (* PLUS *);
  263 (* MINUS *);
  264 (* TIMES *);
  265 (* DIV *);
  266 (* COMMA *);
  267 (* ARROW *);
  268 (* BSLASH *);
  269 (* LPAREN1 *);
  270 (* RPAREN1 *);
  271 (* EQ *);
  272 (* EOL *);
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
\003\000\003\000\003\000\002\000\004\000\006\000\001\000\003\000\
\001\000\000\000\003\000\001\000\000\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\022\000\000\000\000\000\020\000\000\000\
\003\000\005\000\004\000\006\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\012\000\000\000\000\000\000\000\
\000\000\000\000\000\000\001\000\019\000\000\000\000\000\000\000\
\000\000\007\000\000\000\000\000\010\000\011\000\000\000\000\000\
\013\000\000\000\002\000\016\000\000\000\000\000"

let yydgoto = "\002\000\
\004\000\031\000\008\000\032\000"

let yysindex = "\005\000\
\018\255\000\000\252\254\000\000\032\255\000\255\000\000\041\255\
\000\000\000\000\000\000\000\000\025\255\000\255\059\255\000\255\
\034\255\032\255\058\255\000\255\000\000\032\255\008\255\000\255\
\000\255\000\255\000\255\000\000\000\000\000\255\070\255\043\255\
\051\255\000\000\023\255\023\255\000\000\000\000\038\255\000\255\
\000\000\069\255\000\000\000\000\000\255\070\255"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\052\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\019\255\000\000\000\000\000\000\
\000\000\052\255\000\000\054\255\000\000\052\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\060\255\000\000\
\000\000\000\000\042\255\053\255\000\000\000\000\000\000\054\255\
\000\000\000\000\000\000\000\000\000\000\020\255"

let yygindex = "\000\000\
\000\000\250\255\053\000\041\000"

let yytablesize = 81
let yytable = "\017\000\
\009\000\010\000\011\000\012\000\013\000\001\000\014\000\021\000\
\005\000\023\000\006\000\015\000\016\000\024\000\025\000\026\000\
\027\000\035\000\036\000\037\000\038\000\034\000\003\000\039\000\
\015\000\015\000\015\000\015\000\015\000\014\000\026\000\027\000\
\015\000\014\000\015\000\014\000\007\000\020\000\046\000\024\000\
\025\000\026\000\027\000\024\000\025\000\026\000\027\000\008\000\
\008\000\028\000\018\000\008\000\040\000\043\000\019\000\008\000\
\041\000\008\000\009\000\009\000\018\000\021\000\009\000\018\000\
\042\000\021\000\009\000\018\000\009\000\017\000\029\000\022\000\
\030\000\017\000\033\000\024\000\025\000\026\000\027\000\045\000\
\044\000"

let yycheck = "\006\000\
\001\001\002\001\003\001\004\001\005\001\001\000\007\001\014\000\
\013\001\016\000\015\001\012\001\013\001\006\001\007\001\008\001\
\009\001\024\000\025\000\026\000\027\000\014\001\005\001\030\000\
\006\001\007\001\008\001\009\001\010\001\010\001\008\001\009\001\
\014\001\014\001\016\001\016\001\005\001\013\001\045\000\006\001\
\007\001\008\001\009\001\006\001\007\001\008\001\009\001\006\001\
\007\001\016\001\010\001\010\001\010\001\016\001\014\001\014\001\
\014\001\016\001\006\001\007\001\010\001\010\001\010\001\010\001\
\014\001\014\001\014\001\014\001\016\001\010\001\018\000\013\001\
\015\001\014\001\022\000\006\001\007\001\008\001\009\001\011\001\
\040\000"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  COMMA\000\
  ARROW\000\
  BSLASH\000\
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
# 21 "bin/parser.mly"
                            ( Assign (_1, _3) )
# 141 "bin/parser.ml"
               : Ast.assign))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'args) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 22 "bin/parser.mly"
                                           ( Assign (_1, Func (_3, _6)) )
# 150 "bin/parser.ml"
               : Ast.assign))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 26 "bin/parser.mly"
                            ( VBool (_1) )
# 157 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 27 "bin/parser.mly"
                            ( VFloat (_1) )
# 164 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 28 "bin/parser.mly"
                            ( VInt (_1) )
# 171 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 29 "bin/parser.mly"
                            ( VString (_1) )
# 178 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 30 "bin/parser.mly"
                            ( _2 )
# 185 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 31 "bin/parser.mly"
                            ( BinaryOp (_1, "+", _3) )
# 193 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 32 "bin/parser.mly"
                            ( BinaryOp (_1, "-", _3) )
# 201 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 33 "bin/parser.mly"
                            ( BinaryOp (_1, "*", _3) )
# 209 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 34 "bin/parser.mly"
                            ( BinaryOp (_1, "/", _3) )
# 217 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 35 "bin/parser.mly"
                            ( UnaryOp ("-", _2) )
# 224 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'params) in
    Obj.repr(
# 36 "bin/parser.mly"
                                 ( FuncApp (_1, _3) )
# 232 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'args) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 37 "bin/parser.mly"
                                           ( Func (_3, _6) )
# 240 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 38 "bin/parser.mly"
          ( Var (_1) )
# 247 "bin/parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'params) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'params) in
    Obj.repr(
# 42 "bin/parser.mly"
                        ( List.concat([_1; _3]) )
# 255 "bin/parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 43 "bin/parser.mly"
         ( [_1] )
# 262 "bin/parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "bin/parser.mly"
    ( [] )
# 268 "bin/parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'args) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'args) in
    Obj.repr(
# 48 "bin/parser.mly"
                    ( List.concat([_1; _3]) )
# 276 "bin/parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 49 "bin/parser.mly"
          ( [_1] )
# 283 "bin/parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "bin/parser.mly"
    ( [] )
# 289 "bin/parser.ml"
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
