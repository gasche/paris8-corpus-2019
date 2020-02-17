open Test_lib
open Report

include Sampler

let count_leaves =
  set_progress "count_leaves" ;
  Section ([ Code "count_leaves" ],
           test_function_1_against_solution ~gen:0
             [%ty: int tree -> int]
             "count_leaves"
             [Leaf 12;
              Node (Node (Leaf 1, Leaf 3), Leaf 5)]
)

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    count_leaves;
  ]
