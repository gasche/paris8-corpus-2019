let rec fold_left f a li =
  match li with
    | [] -> a
    | x::xs -> fold_left f (f a x) xs

let sum li = fold_left (+) 0 li
