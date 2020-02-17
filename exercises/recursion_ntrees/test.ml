open Test_lib
open Report

include Sampler

let test =
  Section ([ Code "replace" ],
           test_function_2_against_solution ~gen:0
             [%ty:
                 (string, int) ntree
                 -> (string -> (int, int) ntree)
                 -> (int, int) ntree]
             "replace"
             [
               (Leaf "foo", (function "foo" -> Leaf 0));
               (Node (0, [Leaf "foo"; Leaf "bar"; Node (1, [])]),
                (function "foo" -> Leaf 3
                        | "bar" -> Node (42, [Leaf 0])));
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    test;
  ]
