let rec included_sorted li1 li2 =
  match li1, li2 with
    | [], _ -> true
    | _::_, [] -> false
    | x::xs, y::ys ->
       if x < y then false
       else if x = y then included_sorted xs li2
       else (* x > y *) included_sorted li1 ys

