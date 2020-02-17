open Test_lib
open Report

let mem =
  Section ([ Code "mem" ],
           test_function_2_against_solution ~gen:0
             [%ty: int -> int list -> bool]
             "mem" [
               (1, [3; 0; 5]);
               (1, [4; 6; 1]);
               (2, [2; 3]);
               (5, [2; 3]);
               (2, []);
             ]
    )

let included =
  Section ([ Code "included" ],
           test_function_2_against_solution ~gen:6
             [%ty: int list -> int list -> bool]
             "included" [
               ([1; 3; 1], [5; 3; 8; 1; 3]);
               ([2; 3], [3; 2]);
               ([1; 5; 6], [5; 3; 8; 1; 0])
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    mem;
    included;
  ]
