open Test_lib
open Report

include Sampler
              
let test_count_moves =
  Section ([ Code "count_moves" ],
           test_function_1_against_solution ~gen:0
             [%ty: moves -> int]
             "count_moves"
             [
               Done;
               Slide (Vec (0, 0), Done);
               Goto (Point (0, 0), Done);
               Slide (Vec (1, 1), (Goto (Point (0, 0), Done)));
             ]
    )

let test_end_point =
  Section ([ Code "end_point" ],
           test_function_2_against_solution ~gen:0
             [%ty: point -> moves -> point]
             "end_point"
             [
               (Point (3, -2), Done);
               (Point (3, -2), Slide (Vec (1, 3), Done));
               (Point (3, -2), Goto (Point (5, 0), Done));
               (Point (3, -2), Slide (Vec (1, 1), Goto (Point (3, 2), Done)));
               (Point (3, -2), Goto (Point (3, 2), Slide (Vec (1, 1), Done)));
             ]
    )

let test_points =
  Section ([ Code "points" ],
           test_function_2_against_solution ~gen:0
             [%ty: point -> moves -> point list]
             "points"
             [
               (Point (3, -2), Done);
               (Point (3, -2), Slide (Vec (1, 3), Done));
               (Point (3, -2), Goto (Point (5, 0), Done));
               (Point (3, -2), Slide (Vec (1, 1), Goto (Point (3, 2), Done)));
               (Point (3, -2), Goto (Point (3, 2), Slide (Vec (1, 1), Done)));
             ]
    )

let () =
  set_result @@
  ast_sanity_check code_ast @@ fun () ->
  [
    test_count_moves;
    test_end_point;
    test_points;
  ]
