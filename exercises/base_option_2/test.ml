open Test_lib
open Report

include Sampler

let exercise =
  set_progress "Évaluation." ;
  Section ([ Code "multiply" ],
           test_function_2_against_solution ~gen:0
             [%ty: int -> int option -> int option]
             "multiply"
             [
               (8, Some 2);
               (4, Some 2);
               (8, None);
               (0, Some 2);
               (0, None);
             ]         
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    exercise;
  ]
