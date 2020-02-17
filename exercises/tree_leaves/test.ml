open Test_lib
open Report
              
let leaves =
  Section ([ Code "leaves" ],
           test_function_1_against_solution ~gen:0
             [%ty: int tree -> int list]
             "leaves"
             [
               Leaf 1;
               Node (Leaf 1, Leaf 3);
               Node (Node (Leaf 1, Leaf 3), Leaf 2);
               Node (Node (Leaf 1, Leaf 3), Node (Leaf 2, Leaf 4));
             ]
    )

let leaves_append =
  Section ([ Code "leaves_append" ],
           test_function_2_against_solution ~gen:0
             [%ty: int tree -> int list -> int list]
             "leaves_append"
             [
               (Leaf 1, [-1; -2]);
               (Node (Leaf 1, Leaf 3), [-2; 3]);
               (Node (Node (Leaf 1, Leaf 3), Leaf 2), [-2; 3]);
               (Node (Node (Leaf 1, Leaf 3), Node (Leaf 2, Leaf 4)), [-2; 3]);
             ]
    )

let fast_leaves =
  Section ([ Code "fast_leaves" ],
           test_function_1_against_solution ~gen:0
             [%ty: int tree -> int list]
             "fast_leaves"
             [
               Leaf 1;
               Node (Leaf 1, Leaf 3);
               Node (Node (Leaf 1, Leaf 3), Leaf 2);
               Node (Node (Leaf 1, Leaf 3), Node (Leaf 2, Leaf 4));
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    leaves;
    leaves_append;
    fast_leaves;
  ]
