let rec merge lx ly =
  match lx, ly with
    | [], li -> li
    | li, [] -> li
    | x::xs, y::ys ->
       if x <= y
       then x :: merge xs ly
       else y :: merge lx ys

let rec split li =
  match li with
    | [] -> [], []
    | [x] -> [x], []
    | a :: b :: rest ->
       let (la, lb) = split rest in
       a :: la, b :: lb

let rec sort = function
  | [] -> []
  | [x] -> [x]
  | li ->
     let lx, ly = split li in
     merge (sort lx) (sort ly)
     
