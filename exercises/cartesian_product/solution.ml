let cartesian_product la lb =
  let rec loop la' lb'  =
    match la', lb' with
      | [], _ -> []
      | a::la', [] -> loop la' lb
      | a::la', b::lb' -> (a, b) :: loop (a::la') lb'
  in loop la lb
