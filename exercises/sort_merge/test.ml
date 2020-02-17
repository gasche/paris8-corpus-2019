open Test_lib
open Report

let merge =
  Section ([ Code "merge" ],
           test_function_2_against_solution ~gen:0
             [%ty: int list -> int list -> int list]
             "merge"
             [
               ([1], []);
               ([1], [1]);
               ([2], [1]);
               ([0; 3], [1; 2; 5; 6]);
               ([0; 3; 8], [1; 2; 3; 5; 6]);
             ]
    )

let split =
  Section ([ Code "split" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int list * int list]
             "split"
             [
               [];
               [1];
               [1; 3];
               [1; 3; 2];
               [1; 3; 2; 8];
               [1; 3; 2; 8; 0];
               [1; 3; 2; 8; 0; 5];
             ]
    )

let sort =
  Section ([ Code "sort" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int list]
             "sort"
             [
               [];
               [1];
               [2];
               [3; 1; 5];
               [3; 1; 5; 1];
               [1; 2; 3];
               [3; 2; 1; -1; 1; 8; 2];
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    merge;
    split;
    sort;
  ]
