let rec count_leaves = function
  | Node (left, right) -> count_leaves left + count_leaves right
  | Leaf _ -> 1

