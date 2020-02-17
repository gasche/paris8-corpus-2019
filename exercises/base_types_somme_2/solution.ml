let signe n =
  if n > 0 then Strictement_positif
  else if n < 0 then Strictement_negatif
  else Nul

let positif signe =
  match signe with
  | Strictement_positif | Nul -> true
  | Strictement_negatif -> false
