open Test_lib
open Report

include Sampler

let exercise =
  set_progress "prix." ;
  Section ([ Code "prix" ],
           test_function_1_against_solution ~gen:0
             [%ty: boisson -> int]
             "prix"
             [
               Cafe;
               Jus Petit;
               Jus Grand;
               Eau (Plate, Petit);
               Eau (Plate, Grand);
               Eau (Gazeuse, Petit);
               Eau (Gazeuse, Grand);
             ]         
)

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    exercise;
  ]
