open Test_lib
open Report
let test_filter =
  Section ([ Code "filter" ],
           test_function_2_against_solution ~gen:0
             [%ty: (int -> bool) -> int list -> int list]
             "filter"
             [
               ((fun n -> n > 3), []);
               ((fun n -> n > 3), [1; 2; 3; 4; 5; 6]);
               ((fun n -> n mod 2 = 0), [1; 2; 3; 4; 5; 6]);
               ((fun n -> true), [1; 2; 3; 4; 5; 6]);
               ((fun n -> false), [1; 2; 3; 4; 5; 6]);
             ]
    )

let test_non_negative =
  Section ([ Code "non_negative" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int list]
             "non_negative"
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
    test_filter;
    test_non_negative;
  ]
