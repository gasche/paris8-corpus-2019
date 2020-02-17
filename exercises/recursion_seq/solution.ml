let empty = fun () -> Nil
let return x = fun () -> Cons (x, empty)

let rec map f seq = fun () ->
  match seq () with
    | Nil -> Nil
    | Cons (x, xs) -> Cons (f x, map f seq)

let rec concat s1 s2 = fun () ->
  match s1 () with
    | Nil -> s2 ()
    | Cons (x, xs) -> Cons (x, concat xs s2)

let rec concat_map s1 s2 = fun () ->
  match s1 () with
    | Nil -> s2 ()
    | Cons (xs, xss) -> concat xs (concat_map xss s2) ()
