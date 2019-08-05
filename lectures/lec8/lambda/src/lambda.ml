open Syntax
open Eval

let _ =
    try
        let x = Lambda_parse.parse_file Sys.argv.(1) in
        print_endline (string_of_expr x);
        let v = eval x in
        (*print_endline (string_of_expr v);*)
        ();
    with e -> Error.print_error e
