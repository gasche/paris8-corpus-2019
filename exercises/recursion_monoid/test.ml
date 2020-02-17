open Test_lib
open Report

include Sampler

let monoid_mult = (1, ( * ))
let monoid_concat = ("", ( ^ ))
              
let correctness =
  Section ([ Code "pow"; Text "correctness" ],
           test_function_3_against_solution ~gen:0
             [%ty: (int * (int -> int -> int)) -> int -> int -> int]
             "pow"
             (Array.to_list @@ Array.init 10 (fun i -> (monoid_mult, 2, i)))
           @
           test_function_3_against_solution ~gen:0
             [%ty: (string * (string -> string -> string))
                   -> string -> int -> string]
             "pow"
             (Array.to_list @@ Array.init 10 (fun i -> (monoid_concat, "ab", i)))
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    correctness;
  ]
