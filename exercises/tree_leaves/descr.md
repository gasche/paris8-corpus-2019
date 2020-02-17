On définit un type d'arbres binaires ainsi:

    type 'a tree =
    | Leaf of 'a
    | Node of 'a tree * 'a tree

Définir une fonction

    val leaves : 'a tree -> 'a list

qui collecte toutes les feuiles d'un arbre, dans l'ordre où elles
aparaissent dans l'arbre. Par exemple,
`leaves (Node (Node (Leaf 3, Leaf 1), Leaf 5))` est `[3; 1; 5]`.
On pourra utiliser la fonction `List.append : 'a list -> 'a list -> 'a list`
qui met deux liste bout à bout.

Question avancée: quelle est la complexité de `leaves` dans le pire cas ?

Définir une fonction

    val leaves_append : 'a tree -> 'a list -> 'a list

qui ajoute les feuilles d'un arbre à une liste. Par exemple,
`leaves_append (Node (Leaf 3, Leaf 1)) [5]` est `[3; 1; 5]`.
(Ne pas utiliser la fonction `List.append`.)

S'en servir pour redéfinir une fonction

    val fast_leaves : 'a tree -> 'a list

Quelle est sa complexité ?
