On définit un type des arbres

```ocaml
type 'a tree =
  | Leaf of 'a
  | Node of 'a tree * 'a tree
```

Écrire une fonction

```ocaml
val count_nodes : 'a tree -> int
```

qui compte le nombre de nœuds d'un arbre. Par exemple:
- `count_nodes (Leaf true)` est `0`, et
- `count_nodes (Node (Leaf 1, Node (Leaf 3, Leaf 5)))` est `2`

