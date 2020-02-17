let rec leaves = function
  | Leaf x -> [x]
  | Node (left, right) ->
     List.append (leaves left) (leaves right)

let rec leaves_append tree acc = match tree with
  | Leaf x -> x :: acc
  | Node (left, right) ->
     leaves_append left (leaves_append right acc)

let fast_leaves tree = leaves_append tree []
