let rec partition p = function
  | [] -> [], []
  | x::xs ->
     let yes, no = partition p xs in
     if p x then (x::yes, no) else (yes,x::no)

let rec quicksort = function
  | [] -> []
  | x::xs ->
     let smaller, bigger = partition (fun y -> y <= x) xs in
     quicksort smaller @ [x] @ quicksort bigger

