let prime_factors n =
  let rec factors k n =
    if n = 1
    then []
    else if n mod k = 0
    then k :: factors k (n / k)
    else factors (k + 1) n
  in factors 2 n
