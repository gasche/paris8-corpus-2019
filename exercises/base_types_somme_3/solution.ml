let prix = function
  | Jus Petit -> 3
  | Jus Grand -> 5
  | Eau (Plate, _) -> 0
  | Eau (Gazeuse, Petit) -> 2
  | Eau (Gazeuse, Grand) -> 3
  | Cafe -> 2
