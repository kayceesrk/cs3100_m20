%{
open Syntax
%}



%token EOF
%token LAMBDA DOT L_PAREN R_PAREN COMMA
%token <string> IDENT

%start file

%type <Syntax.expr> file expr atom

%right LAMBDA IDENT DOT L_PAREN

%%


file:
      expr EOF { $1 }
;

expr:
      atom { $1 }
    | expr atom { Application ($1, $2) }
;

atom:
      L_PAREN expr R_PAREN { $2 }
    | LAMBDA IDENT DOT expr { Abstraction ($2, $4) }
    | IDENT { Variable $1 }
;
