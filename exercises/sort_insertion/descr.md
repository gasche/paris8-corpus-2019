Définir une fonction

    val insert : 'a -> 'a list -> 'a list

qui insère un élément dans une liste triée (du plus petit au plus
grand élément), à la bonne position pour que la liste reste triée. Par
exemple, `insert 2 [1; 3; 5]` est `[1; 2; 3; 5]`.

Quelle est la complexité de `insert` ?

S'en servir pour définir une fonction

    val sort : 'a list -> 'a list

qui trie une liste (du plus petit au plus grand élément). Par exemple,
`sort [5; 1; 3; 2]` est `[1; 2; 3; 5]`.

Quelle est la complexité de `sort` ?
