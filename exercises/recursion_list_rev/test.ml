open Test_lib
open Report
              
let test_rev =
  Section ([ Code "rev" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int list]
             "rev"
             [
               [1; 2; 3];
               [1];
               [];
             ]
    )

let test_rev_append =
  Section ([ Code "rev_append" ],
           test_function_2_against_solution ~gen:0
             [%ty: int list -> int list -> int list]
             "rev_append"
             [
               ([1; 2], [3; 4]);
               ([], [3; 4]);
               ([1; 2], []);
               ([], []);
             ]
    )


let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    test_rev;
    test_rev_append;
  ]
