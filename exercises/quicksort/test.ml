open Test_lib
open Report

include Sampler

let partition =
  set_progress "Évaluation." ;
  Section ([ Code "partition" ],
           test_function_2_against_solution ~gen:0
             [%ty: (int -> bool) -> int list -> int list * int list]
             "partition"
             [
               (fun n -> n mod 2 = 0), [1; 2; 3; 4; 7; 6];
               (fun n -> n mod 2 = 0), [];
             ]
    )

let quicksort =
  set_progress "Évaluation." ;
  Section ([ Code "quicksort" ],
           test_function_1_against_solution ~gen:0
             [%ty: int list -> int list]
             "quicksort"
             [
               [3; 1; 5];
               [5; 1; 3];
               [5; 1; 3; 1; 2; 5; 5];
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    partition;
    quicksort;
  ]
