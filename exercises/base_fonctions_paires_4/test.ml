open Test_lib
open Report

include Sampler

let mini =
  set_progress "Évaluation de mini." ;
  Section ([ Code "mini" ],
           test_function_2_against_solution ~gen:5
             [%ty: int -> int -> int] "mini"
             []
    )

let maxi =
  set_progress "Évaluation de maxi." ;
  Section ([ Code "maxi" ],
           test_function_2_against_solution ~gen:5
             [%ty: int -> int -> int] "maxi"
             []
    )

let order =
  set_progress "Évaluation de order." ;
  Section ([ Code "order" ],
           test_function_2_against_solution ~gen:5
             [%ty: int -> int -> int * int] "order"
             []
    )


let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    mini;
    maxi;
    order;
  ]
