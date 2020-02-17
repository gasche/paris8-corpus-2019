let rec count_moves = function
  | Done -> 0
  | Slide (_, rest) -> 1 + count_moves rest
  | Goto (_, rest) -> 1 + count_moves rest

let rec end_point start moves =
  match moves with
  | Done -> start
  | Slide (depl, rest) -> end_point (slide start depl) rest
  | Goto (point, rest) -> end_point point rest

let rec points start moves =
  start :: match moves with
  | Done -> []
  | Slide (depl, rest) -> points (slide start depl) rest
  | Goto (point, rest) -> points point rest
