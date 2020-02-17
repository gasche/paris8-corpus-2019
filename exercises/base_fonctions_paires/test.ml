open Test_lib
open Report

include Sampler

let exercise_1 =
  set_progress "Évaluation de swap." ;
  Section ([ Code "swap" ],
           test_function_1_against_solution ~gen:3
             [%ty: int * bool -> bool * int] "swap" []
           @
           test_function_1_against_solution ~gen:3
             [%ty: bool * int -> int * bool] "swap" []
)

let exercise_2_nom =
  set_progress "Évaluation de nom.";
  Section ([ Code "nom" ],
           test_function_1_against_solution ~gen:5
             [%ty: string * int -> string]
             "nom" []
  )

let exercise_2_age =
  set_progress "Évaluation de age.";
  Section ([ Code "age" ],
           test_function_1_against_solution ~gen:5
             [%ty: string * int -> int]
             "age" []
  )

let exercise_2_bonjour =
  set_progress "Évaluation de bonjour.";
  Section ([ Code "bonjour" ],
           test_function_1_against_solution ~gen:0
             [%ty: string * int -> string]
             "bonjour" [("Toto", 3); ("Titi", 0)]
  )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    exercise_1;
    Section ([ Text "Personnes" ], [
      exercise_2_nom;
      exercise_2_age;
    ]);
    Section ([ Text "Personnes: bonjour" ], [
      exercise_2_bonjour;
    ]);
  ]
