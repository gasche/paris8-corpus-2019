let rec pow a n = match n with
    | 0 -> 1
    | 1 -> a
    | n ->
       let half, rest = pow a (n / 2), pow a (n mod 2) in
       half * half *rest
