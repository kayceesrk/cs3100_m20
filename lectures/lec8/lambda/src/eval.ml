open Syntax
open Str


module SS = Set.Make(String);;

let rec eval ?(log=true) (expr: expr) =
    let expr' = reduce expr in
    if expr = expr' then expr else begin
        if log then print_endline ("= " ^ (string_of_expr expr'));
        eval expr'
    end
and reduce = function
    | Abstraction (x, y) -> Abstraction (x, reduce y)
    | Variable x -> Variable x
    | Application (Abstraction (x, y), z) ->
        let Abstraction (x', y') = resolve_conflicts (Abstraction (x, y)) z in
        substitute y' x' z
    | Application (x, y) -> Application (reduce x, reduce y)
and resolve_conflicts a b =
    let used_names = SS.union (variables a) (variables b) in
    let names_to_change = SS.inter (bound_variables a) (bound_variables b) in
    let rec new_name name =
        if SS.mem name used_names then new_name begin
            if Str.string_match (Str.regexp "[^0-9'][0-9]+$") name 0 then
                Str.global_substitute (Str.regexp "[0-9]+$") (fun x -> string_of_int ((int_of_string (Str.matched_string x)) + 1)) name
            else if Str.string_match (Str.regexp "[^0-9']$") name 0 then
                name ^ "2"
            else
                name ^ "'"
        end else name
    in
    let replacements = ref [] in
    SS.iter (fun x -> replacements := (x, new_name x)::!replacements) names_to_change;
    replace_names a !replacements
and variables = function
    | Abstraction (arg, body) -> SS.add arg (variables body)
    | Application (a, b) -> SS.union (variables a) (variables b)
    | Variable name -> SS.add name SS.empty
and bound_variables = function
    | Abstraction (arg, body) -> SS.add arg (bound_variables body)
    | Application (a, b) -> SS.union (bound_variables a) (bound_variables b)
    | Variable _ -> SS.empty
and free_variables expr =
    let all, bound = variables expr, bound_variables expr in
    SS.diff all (SS.inter all bound)
and replace_names expr = function
    | [] -> expr
    | (x, y)::rest -> replace_names (replace_name expr x y) rest
and replace_name expr a b = match expr with
    | Abstraction (x, y) ->
        Abstraction ((if x = a then b else x), replace_name y a b)
    | Variable x ->
        Variable (if x = a then b else x)
    | Application (x, y) ->
        Application (replace_name x a b, replace_name y a b)
and substitute expr a b = match expr with
    | Abstraction (x, y) ->
        if x = a then Abstraction (x, y) else Abstraction (x, substitute y a b)
    | Application (x, y) ->
        Application (substitute x a b, substitute y a b)
    | Variable x ->
        if x = a then b else Variable x


