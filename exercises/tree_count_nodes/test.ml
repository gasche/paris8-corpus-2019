open Test_lib
open Report

include Sampler

let count_nodes =
  set_progress "count_nodes" ;
  Section ([ Code "count_nodes" ],
           test_function_1_against_solution ~gen:0
             [%ty: int tree -> int]
             "count_nodes"
             [Leaf 12;
              Node (Node (Leaf 1, Leaf 3), Leaf 5)]
)

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    count_nodes;
  ]
