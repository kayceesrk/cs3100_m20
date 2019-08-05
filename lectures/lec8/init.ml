#require "str";;
#directory "lambda/_build/src";;
#load_rec "lambda/_build/src/syntax.cmo";;
#load_rec "lambda/_build/src/lambda_parse.cmo";;
#load_rec "lambda/_build/src/eval.cmo";;

let eval s = s |> Lambda_parse.parse_string |> Eval.eval |> Syntax.string_of_expr 
let eval_traced s = s |> Lambda_parse.parse_string |> Eval.eval ~log:true |> Syntax.string_of_expr 
