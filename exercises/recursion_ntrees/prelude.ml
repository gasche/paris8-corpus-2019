type ('leaf, 'node) ntree =
  | Leaf of 'leaf
  | Node of 'node * ('leaf, 'node) ntree list
