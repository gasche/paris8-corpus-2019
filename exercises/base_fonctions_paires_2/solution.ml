let annee_suivante (a, m, j) = (a + 1, m, j)

let mois_suivant (a, m, j) =
  if m = 12
  then (a + 1, 1, j)
  else (a, m + 1, j)
