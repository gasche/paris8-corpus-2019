let rec count_nodes = function
  | Node (left, right) -> 1 + count_nodes left + count_nodes right
  | Leaf _ -> 0

