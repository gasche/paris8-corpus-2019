open Test_lib
open Report

let test_fold_right =
  Section ([ Code "fold_right" ],
           test_function_3_against_solution ~gen:0
             [%ty: (int -> int list -> int list) -> int list -> int list -> int list]
             "fold_right"
             [
               ((fun n li -> n :: li), [3; 4], [1; 2]);
               ((fun n li -> n :: li), [], []);
             ]
    )

let test_duplicate_each =
  Section ([ Code "duplicate_each" ],
           test_function_1_against_solution ~gen:0
             [%ty: char list -> char list]
             "duplicate_each" [
               [];
               ['a'];
               ['a'; 'b'; 'c'];
               ['a'; 'a']
             ]
    )


let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    test_fold_right;
    test_duplicate_each;
  ]
