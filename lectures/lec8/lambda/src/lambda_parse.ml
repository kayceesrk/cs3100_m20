open Error
open Syntax
open Lexing

let parse_error lexbuf =
    syntax_error (
        if lexbuf.Lexing.lex_curr_pos == lexbuf.Lexing.lex_last_pos then
            "Unexpected end of file"
        else
            ("Unexpected token '" ^ (Lexing.lexeme lexbuf) ^ "'")
    ) (Lexing.lexeme_start_p lexbuf)

let try_parse lexbuf =
    try
        Lambda_parser.file Lambda_lexer.token lexbuf
    with _ -> parse_error lexbuf

let parse_string str =
    try_parse (Lexing.from_string str)

let parse_file filename =
    let lexbuf = Lexing.from_channel (open_in filename) in
    lexbuf.lex_curr_p <- { lexbuf.lex_curr_p with pos_fname = filename };
    try_parse lexbuf
