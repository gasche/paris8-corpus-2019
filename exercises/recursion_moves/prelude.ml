type point = Point of int * int
type vector = Vec of (int * int)

let slide (Point (x, y)) (Vec (dx, dy)) = Point (x+dx, y+dy)

type moves =
  | Done
  | Slide of vector * moves
  | Goto of point * moves
