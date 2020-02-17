open Test_lib
open Report

include Sampler

let int_or_0 =
  set_progress "Grading." ;
  Section ([ Code "int_or_0" ],
           test_function_1_against_solution ~gen:0
             [%ty: int option -> int]
             "int_or_0"
             [
               Some 1;
               Some 3;
               Some (-2);
               None;
               Some 4;
             ]         
    )

let not_0 =
  set_progress "Grading." ;
  Section ([ Code "not_0" ],
           test_function_1_against_solution ~gen:0
             [%ty: int -> int option]
             "not_0"
             [
               2;
               123;
               (-3);
               0;
               max_int;
               min_int;
             ]
    )

let apply_opt =
  set_progress "Grading." ;
  Section ([ Code "apply_opt" ],
           test_function_2_against_solution ~gen:0
             [%ty: (int -> bool) option -> int option -> bool option]
             "apply_opt"
             [
               (Some (fun n -> n > 3), Some 1);
               (Some (fun n -> n > 3), Some 5);
               (Some (fun n -> n > 3), None);
               (None, Some 3);
               (None, None);
             ]         
           @
           test_function_2_against_solution ~gen:0
             [%ty: (bool -> int) option -> bool option -> int option]
             "apply_opt"
             [
               (Some (function true -> 1 | false -> 2), Some true);
               (Some (function true -> 1 | false -> 2), Some false);
               (Some (function true -> 1 | false -> 2), None);
               (None, Some true);
               (None, None);
             ]
)

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    int_or_0;
    not_0;
    apply_opt;
  ]
