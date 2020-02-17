On définit un type qui représente le signe d'un nombre

```
type signe =
  | Strictement_positif
  | Strictement_negatif
  | Nul
```

Définir une fonction

```
val signe : int -> signe
```

qui renvoie le signe du nombre fourni. Par exemple,
`signe 3 = Strictement_positif`,
`signe (-2) = Strictement_negatif`,
`signe 0 = Nul`.

Définir une fonction

```
val positif : signe -> bool
```

qui teste si le signe d'un nombre est positif ou nul.
