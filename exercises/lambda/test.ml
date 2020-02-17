open Test_lib
open Report

let if_ =
  Section ([ Code "if" ],
           test_function_4_against_solution ~gen:0
             [%ty: ('a -> int -> int -> int) -> 'a -> int -> int -> int]
             "apply"
             [
               (Code.my_if, Code.my_true,  1, 2);
               (Code.my_if, Code.my_false, 1, 2);
               (Code.my_if, Code.my_true,  3, 4);
               (Code.my_if, Code.my_false, 3, 4);
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    if_;
  ]
