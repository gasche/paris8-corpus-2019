Définir une fonction

    val merge : 'a list -> 'a list -> 'a list

qui fusionne deux listes triées (du plus petit au plus grand élément):
la liste finale contient les éléments des deux listes de départ, en
plaçant les éléments de telle façon que la liste est triée.

Par exemple, `merge [0; 4; 5; 8] [1; 6; 8]` est `[0; 1; 4; 5; 6; 8; 8]`.

Quelle est la complexité de `merge` ?

Définir une fonction

    val split : 'a list -> 'a list * 'a list

qui coupe une liste en deux moitiés de taille à peu près égales:
- `split []` est `[], []`
- `split [a]` est `[a], []`
- si `split li` est `(la, lb)`,
  alors `split (a::b::li)` est `(a :: la, b :: lb)`

Se servir des deux pour définir une fonction

    val sort : 'a list -> 'a list

qui trie une liste (du plus petit au plus grand élément): d'abord on
couple la liste en deux, puis on trie chaque moitié et on réunit les
deux listes triées.

Par exemple, `sort [5; 1; 3; 2]` est `[1; 2; 3; 5]`.

Quelle est la complexité de `sort` ?
