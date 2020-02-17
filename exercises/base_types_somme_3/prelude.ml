type taille = Petit | Grand
type categorie_eau = Plate | Gazeuse
type boisson =
  | Cafe
  | Jus of taille
  | Eau of categorie_eau * taille

