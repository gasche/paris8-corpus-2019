On définit un type représentant des commandes de boissons dans un café:

```
type taille = Petit | Grand
type categorie_eau = Plate | Gazeuse
type boisson =
  | Cafe
  | Jus of taille
  | Eau of categorie_eau * taille
```

Le prix des boissons est affiché au comptoir:

```
              -----------------
              | Petit | Grand |
------------------------------|
| jus         | 3     | 5     |
| eau plate   | 0     | 0     |
| eau gazeuse | 2     | 3     |
-------------------------------
| café        |      2        |
-------------------------------
```

Définir la fonction qui calcule le prix d'une boisson.

```
val prix : boisson -> int
```
