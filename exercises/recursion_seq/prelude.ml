type 'a seq = unit -> 'a node
and 'a node = Nil | Cons of 'a * 'a seq

let rec of_list = function
  | [] -> (fun () -> Nil)
  | x::xs -> (fun () -> Cons(x, of_list xs))

let rec to_list n = match n () with
    | Nil -> []
    | Cons (x, next) -> x :: to_list next
