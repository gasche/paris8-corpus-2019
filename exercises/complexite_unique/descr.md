Écrire une fonction

    val mem : 'a -> 'a list -> bool

qui teste si un élément appartient à une liste.

Quelle est la complexité de `mem` ? Écrire la réponse en commentaire dans le code

    (* la complexité de mem est: ... *)

---

Écrire une fonction

    val unique : 'a list -> 'a list

qui renvoie la liste des éléments, sans doublon. Par exemple,
`unique [1; 3; 1; 5]` renvoie `[1 ;3; 5]`. (Utiliser `mem`).

Quelle est la complexité de `unique` ? Écrire la réponse en commentaire dans le code

    (* la complexité de unique est: ... *)

---

### Questions bonus (à faire si vous avez fini tous les exercices)

Écrire une fonction

    val unique_sorted : 'a list -> 'a list

qui élimine les doublons (comme `unique`) d'une liste triée du plus petit au plus grand élément.

Quell est la complexité de `unique_sorted`?  Écrire la réponse en commentaire dans le code

    (* la complexité de unique_sorted est: ... *)
