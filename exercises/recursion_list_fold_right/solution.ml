let rec fold_right f li a =
  match li with
    | [] -> a
    | x::xs -> f x (fold_right f xs a)

let duplicate_each li =
  fold_right (fun x xs -> x::x::xs) li []
