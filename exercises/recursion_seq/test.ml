open Test_lib
open Report
              
let rec of_list = function
  | [] -> (fun () -> Nil)
  | x::xs -> (fun () -> Cons(x, of_list xs))

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
  ]
