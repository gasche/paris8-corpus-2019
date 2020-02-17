
let rec append xs ys =
  match xs with
    | [] -> ys
    | x::xs -> x :: append xs ys
