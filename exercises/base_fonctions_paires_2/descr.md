Dans cet exercice on choisit de représenter des dates comme des
triplets d'entiers `(annee, mois, jour)`.

```
type date = int * int * int
```

Par exemple, le 3 octobre 2019 est représenté comme:

```
let exemple = (2019, 10, 3)
```

Définir une fonction `anne_suivante` qui prend une date et renvoie la même
date, mais l'année suivante. Par exemple, `next_date` sur notre
exemple doit nous donner le 3 octobre 2020, représenté comme `(2020,
10, 3)`.

```
val annee_suivante : date -> date
```

---

Définir une fonction `mois_suivante` qui prend une date et renvoie la
même date, le mois suivant. Pour simplifier, on va supposer que tous
les mois ont le même nombre de jour (31), mais attention, il n'existe
pas de treizième mois.

```
val mois_suivant : date -> date
```
