type expr =
  | VInt of int
  | BinaryOp of expr * string * expr
  | UnaryOp of string * expr

let rec show expr = match expr with
  | VInt x -> string_of_int x
  | BinaryOp (a, op, b) -> "(" ^ (show a) ^ op ^ (show b) ^ ")"
  | UnaryOp (op, a) -> "(" ^ op ^ (show a) ^ ")"
