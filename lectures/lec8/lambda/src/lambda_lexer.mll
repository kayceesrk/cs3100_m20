{
    open Lambda_parser
    exception UnexpectedCharacter
}

let space = [' ''\t''\r']
let comment = "#" [^'\n']*
let id = ['$''_''0'-'9''a'-'z''A'-'Z''~''!''@''$''%''^''&''*''-''+''=''|'':''<''>''?''/']
(*let id = [^'('')''['']''{''}''.''\\']*)

rule token = parse
      comment       { token lexbuf }
    | '\n'          { Lexing.new_line lexbuf; token lexbuf }
    | space         { token lexbuf }
    | "λ"           { LAMBDA }
    | '\\'          { LAMBDA }
    | '.'           { DOT }
    | '('           { L_PAREN }
    | ')'           { R_PAREN }
    | id+ as x      { IDENT(x) }
    | eof           { EOF }
    | _             { raise UnexpectedCharacter }

