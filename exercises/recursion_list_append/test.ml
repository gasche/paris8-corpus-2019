open Test_lib
open Report

let test_append =
  Section ([ Code "append" ],
           test_function_2_against_solution ~gen:0
             [%ty: int list -> int list -> int list]
             "append"
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
    test_append;
  ]
