open Test_lib
open Report

let test_fold_left =
  Section ([ Code "fold_left" ],
           test_function_3_against_solution ~gen:0
             [%ty: (int list -> int -> int list) -> int list -> int list -> int list]
             "fold_left"
             [
               ((fun li n -> n :: li), [3; 4], [1; 2]);
               ((fun li n -> n :: li), [], []);
             ]
    )

let test_sum =
  Section ([ Code "sum" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int]
             "sum"
             [
               [1; -2; 3; -6; 8];
               [];
               [-3];
               [5; 2; 0];
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    test_fold_left;
    test_sum;
  ]
