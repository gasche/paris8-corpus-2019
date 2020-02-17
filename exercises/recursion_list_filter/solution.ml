let rec filter p li = match li with
    | [] -> []
    | x::xs -> (if p x then [x] else []) @ filter p xs

let non_negative li = filter (fun p -> p >= 0) li
