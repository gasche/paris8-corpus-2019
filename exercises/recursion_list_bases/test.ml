open Test_lib
open Report

let length =
  Section ([ Code "length" ],
           test_function_1_against_solution ~gen:4
             [%ty: char list -> int]
             "length" []
    )

let nth =
  Section ([ Code "nth" ],
           test_function_2_against_solution ~gen:6
             [%ty: int -> char list -> char option]
             "nth" []
    )

let last =
  Section ([ Code "last" ],
           test_function_1_against_solution ~gen:6
             [%ty: char list -> char option]
             "last" []
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    length;
    nth;
    last;
  ]
