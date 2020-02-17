On rappelle que le type standard `'a option` est défini de la manière suivante:

```
type 'a option =
  | None
  | Some 'a
```

Définir une fonction qui prend un `int option` et renvoie l'entier
s'il est présent, `0` sinon.

```
val int_or_0 : int option -> int
```

Définir une fonction qui prend un entier et renvoie sa valeur s'il est
non-nul, ou `None` sinon.

```
val not_0 : int -> int option
```

Définir une fonction qui applique une fonction optionnelle à une
valeur optionnelle: si l'un des deux est manquant, on renvoie `None`.

```
val apply_opt : ('a -> 'b) option -> 'a option -> 'b option
```