{
open Parser        (* The type token is defined in parser.mli *)
exception Eof
}
rule token = parse
    [' ' '\t']     { token lexbuf }     (* skip blanks *)
  | ['\n' ]        { EOL }
  | "true" | "false" as lxm        { BOOL(bool_of_string lxm) }
  | ['0'-'9']+'.'['0'-'9']+ as lxm { FLOAT(float_of_string lxm) }
  | ['0'-'9']+ as lxm              { INT(int_of_string lxm) }
  | ['a'-'z']['a'-'z' '_' '0'-'9']* as lxm         { IDENT(lxm) }
  | '"'[^'"']*'"' as lxm { STRING(lxm) }
  | '+'            { PLUS }
  | '-'            { MINUS }
  | '*'            { TIMES }
  | '/'            { DIV }
  | ','            { COMMA }
  | '('            { LPAREN1 }
  | ')'            { RPAREN1 }
  | "=>"           { ARROW }
  (* | '{'            { LPAREN2 }
  | '}'            { RPAREN2 }
  | '['            { LPAREN3 }
  | ']'            { RPAREN3 } *)
  (* | '<'            { LT }
  | "<="           { LTE }
  | '>'            { GT }
  | ">="           { GTE } *)
  | '='            { EQ }
  (* | "=="           { EQ2 }
  | "type"         { TYPE }
  | "throw"        { THROW }
  | "return"       { RETRUN } *)
  | eof            { raise Eof }
