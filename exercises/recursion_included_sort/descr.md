Écrire une fonction `included_sorted li1 li2`

```ocaml
val included_sorted  : 'a list -> 'a list -> bool
```

qui dit si la liste triée `li1` (du plus petit élément au plus grand)
est incluse dans la liste triée `li2` (tous les éléments de `li1` sont
dans `li2`).

Ce test peut se faire efficacement, en traversant les deux listes une
seule fois en parallèle.

On obtient ensuite une implémentation efficace de `included` en triant les listes en entrées.
