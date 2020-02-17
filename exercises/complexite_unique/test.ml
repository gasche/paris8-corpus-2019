open Test_lib
open Report

include Sampler

let mem =
  set_progress "mem" ;
  Section ([ Code "mem" ],
           test_function_2_against_solution ~gen:0
             [%ty: int -> int list -> bool]
             "mem"
             [(1, [3; 1; 5]);
              (2, []);
              (3, [2]);]
)

let unique =
  set_progress "unique" ;
  Section ([ Code "unique" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int list]
             "unique"
             [[3; 1; 3; 5];
              [];
              [2];
              [1; 1; 2; 1; 2]]
    )

let unique_sorted =
  set_progress "unique_sorted" ;
  Section ([ Code "unique_sorted" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int list]
             "unique_sorted"
             [[1; 1; 3; 4; 4; 5];
              [];
              [2]]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    mem;
    unique;
    unique_sorted;
  ]
