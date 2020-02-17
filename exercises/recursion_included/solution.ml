let rec mem a li =
  match li with
    | [] -> false
    | x::xs -> a = x || mem a xs

let rec included xs ys =
  match xs with
    | [] -> true
    | x::xs -> mem x ys && included xs ys
