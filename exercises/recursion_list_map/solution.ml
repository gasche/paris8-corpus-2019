let rec map f li = match li with
    | [] -> []
    | x::xs -> let y = f x in y :: map f xs

let add_2_each li = List.map (fun n -> n+2) li
