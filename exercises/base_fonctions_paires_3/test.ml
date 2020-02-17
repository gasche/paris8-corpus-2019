open Test_lib
open Report

include Sampler

let choose =
  set_progress "Évaluation de choose." ;
  Section ([ Code "choose" ],
           test_function_2_against_solution ~gen:5
             [%ty: bool -> int * int -> int] "choose"
             []
           @
           test_function_2_against_solution ~gen:5
             [%ty: bool -> bool * bool -> bool] "choose"
             []
    )

(* attention, le comportement en cas d'égalité des poids
   `better (1, x) (1, y)` n'est pas spécifié, ne pas le tester. *)
let better =
  set_progress "Évaluation de better";
  Section ([ Code "better" ],
           test_function_2_against_solution ~gen:0
             [%ty: int * int -> int * int  -> int] "better"
             [
               (1, 10), (2, 20);
               (2, 20), (1, 10);
               (-3, 4), (-5, 6);
             ]
           @            
             test_function_2_against_solution ~gen:0
             [%ty: int * bool -> int * bool  -> bool] "better"
             [
               (1, true), (2, false);
               (2, true), (1, false);
               (-3, true), (-5, false);
             ]

  )


let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    choose;
    better;
  ]
