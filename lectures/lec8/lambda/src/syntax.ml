type expr =
    | Variable of string
    | Abstraction of string * expr
    | Application of expr * expr

let string_of_expr x =
  let rec str : (expr -> string) = function
  | Variable s -> s
  | Abstraction (s, x) -> "λ" ^ s ^ "." ^ (str x)
  | Application (x, y) ->
      let x' = 
        match x with
        |  Abstraction _ -> "(" ^ (str x) ^ ")"
        | _ -> str x
      in
      let y' = 
        match y with
        | Application _ -> "(" ^ (str y) ^ ")"
        | Abstraction _ -> "(" ^ (str y) ^ ")"
        | _ -> str y
      in
      x' ^ " " ^ y'
  in
  str x
