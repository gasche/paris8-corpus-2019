type 'a monoid = 'a * ('a -> 'a -> 'a)

let pow (one, ( *~ )) a n =
  let rec pow a n = match n with
      | 0 -> one
      | 1 -> a
      | n ->
         let half, rest = pow a (n / 2), pow a (n mod 2) in
         half *~ half *~ rest
  in pow a n
