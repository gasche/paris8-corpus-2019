open Test_lib
open Report
              
let insert =
  Section ([ Code "insert" ],
           test_function_2_against_solution ~gen:0
             [%ty: int -> int list -> int list]
             "insert"
             [
               (1, []);
               (1, [1]);
               (2, [1]);
               (3, [1; 2; 5; 6]);
               (3, [1; 2; 3; 5; 6]);
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
    insert;
    sort;
  ]
