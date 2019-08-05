open Lexing

type pos = Lexing.position

exception SyntaxError of string * pos

let string_of_loc ({ pos_fname; pos_bol; pos_lnum; pos_cnum; }: pos) =
    let fname = if pos_fname = "" then "" else pos_fname ^ " " in
    fname ^ (string_of_int pos_lnum) ^ ":"
      ^ (string_of_int (pos_cnum - pos_bol + 1))

let print_error = function
    | SyntaxError (message, p) ->
        print_endline ("❌ SyntaxError(" ^ (string_of_loc p) ^ "): "
                          ^ message ^ ".")
    | e -> raise e

let syntax_error message pos =
    raise (SyntaxError (message, pos))
