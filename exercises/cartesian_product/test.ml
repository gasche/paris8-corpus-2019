open Test_lib
open Report

include Sampler

let exercise =
  set_progress "Évaluation." ;
  Section ([ Code "cartesian_product" ],
           test_function_2_against_solution ~gen:0
             [%ty: int list -> char list -> (int * char) list]
             "cartesian_product"
             [
               [], [];
               [1; 2], [];
               [], ['a'; 'b'];
               [1; 2; 3], ['a'; 'b'; 'c'];
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    exercise;
  ]
