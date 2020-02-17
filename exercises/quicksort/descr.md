Écrire une fonction

    val partition : ('a -> bool) -> 'a list -> 'a list * 'a list

telle que [partition p xs] renvoie une paire de deux valeurs:
- la liste des éléments [x] de [xs] tel que [p x] est vrai, et
- la liste des éléments [x] de [xs] tel que [p x] est faux

Par exemple,
`partition (fun n -> n >= 2) [0; 3; 1; 4]` est `([3; 4], [0; 1])`.

S'en servir pour écrire une fonction

    val quicksort : 'a list -> 'a list

qui trie les éléments d'une liste `(x::xs)` de la façon suivante:

- on partitionne la liste `xs` en deux listes, les éléments plus
  petits que `x` et les éléments plus grands que `x`
- on trie chacune de ces deux listes
- on met les résultats ensemble pour obtenir une liste triée

Par exemple, `quicksort [0; 3; 1; 4]` est `[0; 1; 3; 4]`.
