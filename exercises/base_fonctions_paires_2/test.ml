open Test_lib
open Report

include Sampler

let exercise_annee_suivante =
  set_progress "Évaluation de annee_suivante." ;
  Section ([ Code "annee_suivante" ],
           test_function_1_against_solution ~gen:0
             [%ty: int * int * int -> int * int * int] "annee_suivante"
             [
               (2019, 10, 3);
               (2020, 1, 1);
               (-50, 03, 1);
             ]
)

let exercise_mois_suivant =
  set_progress "Évaluation de mois_suivant";
  Section ([ Code "mois_suivant" ],
           test_function_1_against_solution ~gen:0
             [%ty: int * int * int -> int * int * int] "mois_suivant"
             [
               (2019, 10, 3);
               (2020, 10, 3);
               (-50, 03, 1);
               (2019, 12, 1);
               (2020, 12, 1);
             ]
  )


let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    exercise_annee_suivante;
    exercise_mois_suivant;
  ]
