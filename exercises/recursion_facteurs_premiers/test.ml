open Test_lib
open Report

include Sampler
              
let test =
  Section ([ Code "prime_factors" ],
           test_function_1_against_solution ~gen:0
             [%ty: int -> int list]
             "prime_factors"
             (Array.to_list @@ Array.init 20 (fun i -> i+1))
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    test;
  ]
