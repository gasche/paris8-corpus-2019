open Test_lib
open Report
              
let test_map =
  Section ([ Code "map" ],
           test_function_2_against_solution ~gen:0
             [%ty: (int -> int) -> int list -> int list]
             "map"
             [
               (succ, []);
               (succ, [1; 2; 3]);
             ]
    )

let test_add_2_each =
  Section ([ Code "add_2_each" ],
           test_function_1_against_solution ~gen:5
             [%ty: int list -> int list]
             "add_2_each"
             []
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    test_map;
    test_add_2_each;
  ]
