#require "str";;
#directory "objects";;
#load_rec "objects/syntax.cmo";;
#load_rec "objects/lambda_parse.cmo";;
#load_rec "objects/eval.cmo";;

let eval s = s |> Lambda_parse.parse_string |> Eval.eval |> Syntax.string_of_expr 
let eval_traced s = s |> Lambda_parse.parse_string |> Eval.eval ~log:true |> Syntax.string_of_expr 
