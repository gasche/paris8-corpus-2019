open Test_lib
open Report

include Sampler

let exercise =
  set_progress "Grading." ;
  Section ([ Code "description" ],
           test_function_1_against_solution ~gen:0
             [%ty: address -> string]
             "description"
             [
               Email "gabriel.scherer@gmail.com";
               Telephone (33, "123456789");
             ]         
)

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    exercise;
  ]
