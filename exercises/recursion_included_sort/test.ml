open Test_lib
open Report

let included_sorted =
  Section ([ Code "included_sorted" ],
           test_function_2_against_solution ~gen:0
             [%ty: int list -> int list -> bool]
             "included_sorted" [
               ([1; 3], [0; 1; 2; 3; 5]);
               ([1; 1; 3], [0; 1; 2; 3; 5]);
               ([1; 3], [1; 1; 2; 3; 5]);
               ([2; 3], [2; 2]);
               ([1; 5; 6], [0; 1; 3; 5; 8]);

             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    included_sorted;
  ]
