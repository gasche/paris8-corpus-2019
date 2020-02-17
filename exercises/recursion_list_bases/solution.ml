let rec length li =
  match li with
    | [] -> 0
    | _ :: rest -> 1 + length rest

let rec nth n li =
  match li with
    | [] -> None
    | x :: xs ->
       if n = 0 then Some x else nth (n - 1) xs

let rec last li =
  match li with
    | [] -> None
    | x :: xs ->
       match last xs with
         | None -> Some x
         | (Some _) as res -> res
                                

