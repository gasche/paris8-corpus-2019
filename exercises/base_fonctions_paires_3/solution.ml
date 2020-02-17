let choose p (a, b) = if p then a else b

let better (k1, v1) (k2, v2) =
  if k1 >= k2 then v1 else v2
