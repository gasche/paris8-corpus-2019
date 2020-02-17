let rec insert a li =
  match li with
  | [] -> [a]
  | x::xs ->
     if a <= x then a :: li
     else x :: insert a xs

let rec sort = function
  | [] -> []
  | x :: xs -> insert x (sort xs)

     
