open Test_lib
open Report

include Sampler

let signe =
  set_progress "signe." ;
  Section ([ Code "signe" ],
           test_function_1_against_solution ~gen:5
             [%ty: int -> signe]
             "signe"
             []
)

let positif =
  set_progress "positif." ;
  Section ([ Code "positif" ],
           test_function_1_against_solution ~gen:0
             [%ty: signe -> bool]
             "positif"
             [Strictement_positif;
              Strictement_negatif;
              Nul]
)

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    signe;
    positif;
  ]
