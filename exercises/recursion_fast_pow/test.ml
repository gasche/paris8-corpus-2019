open Test_lib
open Report

include Sampler

let correctness =
  Section ([ Code "pow"; Text "correctness" ],
           test_function_2_against_solution ~gen:0
             [%ty: int -> int -> int]
             "pow"
             (Array.to_list @@ Array.init 10 (fun i -> (2, i)))
    )

let efficiency =
  let rec max_mults n =
    if n = 0 then 0
    else 2 + max_mults (n / 2) in
  Section ([ Code "pow"; Text "testing how many times you multiplied" ],
           test_function_2_against_postcond ~gen:0
           ~before_user:(fun _ _ -> nbmults := 0)
           ~after:(fun _ n _ ->
             if !nbmults > max_mults n
             then [Report.failure ~message:"too many multiplications"]
             else [])
           (fun _ty _res _ _ -> [])
           [%ty: int -> int -> int]
           "pow"
           [(2, 13)]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    correctness;
    efficiency;
  ]
