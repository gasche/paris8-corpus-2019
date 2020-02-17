let int_or_0 = function
| None -> 0
| Some n -> n

let not_0 n =
  if n = 0 then None else Some n

let apply_opt (f_opt : ('a -> 'b) option) (x_opt : 'a option) =
  match f_opt, x_opt with
    | Some f, Some x -> Some (f x)
    | None, _ | _, None -> None

