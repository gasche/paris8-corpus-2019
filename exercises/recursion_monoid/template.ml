type 'a monoid = 'a * ('a -> 'a -> 'a)

let pow (monoid : 'a monoid) a n = ...
