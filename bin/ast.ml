type expr =
  | VBool of bool
  | VInt of int
  | VFloat of float
  | VString of string
  | BinaryOp of expr * string * expr
  | UnaryOp of string * expr
  | FuncApp of string * expr list
  | Func of string list * expr
  | Var of string

type assign = Assign of string * expr

let rec showExpr expr = match expr with
  | VBool x -> string_of_bool x
  | VInt x -> string_of_int x
  | VFloat x -> string_of_float x
  | VString x -> x
  | BinaryOp (a, op, b) -> "(" ^ (showExpr a) ^ " " ^ op ^ " " ^ (showExpr b) ^ ")"
  | UnaryOp (op, a) -> "(" ^ op ^ (showExpr a) ^ ")"
  | FuncApp (name, params) -> name ^ "(" ^ String.concat ", " (List.map showExpr params) ^ ")"
  | Func (args, body) -> "(\\(" ^ String.concat ", " args ^ ")" ^ " => " ^ showExpr body ^ ")"
  | Var name -> name

let showAssign (Assign (name, expr)) = name ^ " = " ^ showExpr expr

let a = List.concat [[VBool true]; [VInt 1]]
