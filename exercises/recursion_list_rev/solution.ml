let rec rev_append xs ys =
  match xs with
    | [] -> ys
    | x::xs -> rev_append xs (x :: ys)

let rev xs = rev_append xs []
