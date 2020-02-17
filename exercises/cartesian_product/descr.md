Écrire une fonction

    val cartesian_product : 'a list -> 'b list -> ('a * 'b) list

qui renvoie le produit cartésien de deux listes:
`cartesian_product la lb` est la liste des paires `(a, b)` telles que `a` est dans `la` et
`b` est dans `lb`. L'ordre des paires dans la liste renvoyée n'est pas important.

Par exemple, `cartesian_product [1; 2; 3] [false; true]` est une liste
qui contient les éléments suivants, dans n'importe quel ordre:
- `(1, false)`
- `(1, true)`
- `(2, false)`
- `(2, true)`
- `(3, false)`
- `(3, true)`
