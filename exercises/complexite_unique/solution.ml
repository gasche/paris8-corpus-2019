let rec mem x = function
  | [] -> false
  | head :: rest -> x = head || mem x rest

let rec unique = function
  | [] -> []
  | [x] -> [x]
  | a :: rest ->
     if mem a rest then unique rest
     else a :: unique rest

let rec unique_sorted = function
  | [] -> []
  | [x] -> [x]
  | a :: b :: rest ->
     if a = b then unique_sorted (b :: rest)
     else a :: unique_sorted (b :: rest)
