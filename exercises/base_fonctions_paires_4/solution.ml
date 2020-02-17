let mini a b = if a <= b then a else b
let maxi a b = if a >= b then a else b

let order a b = (mini a b, maxi a b)
