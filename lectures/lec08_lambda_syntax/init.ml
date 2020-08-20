#require "str";;
#directory "/lectures/lambda";;
#load_rec "/lectures/lambda/syntax.cmo";;
#load_rec "/lectures/lambda/lambda_parse.cmo";;
#load_rec "/lectures/lambda/eval.cmo";;

open Syntax

let parse = Lambda_parse.parse_string

let free_variables s =
  s |> Lambda_parse.parse_string |> Eval.free_variables |> Eval.SS.elements

let substitute expr a b =
  let expr = Lambda_parse.parse_string expr in
  let b = Lambda_parse.parse_string b in
  Eval.substitute expr a b |> Syntax.string_of_expr

(*
let eval s = s |> Lambda_parse.parse_string |> Eval.eval |> Syntax.string_of_expr
let eval_traced s = s |> Lambda_parse.parse_string |> Eval.eval ~log:true |> Syntax.string_of_expr
*)
