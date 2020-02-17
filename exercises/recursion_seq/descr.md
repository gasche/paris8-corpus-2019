```ocaml
val empty : 'a seq
val return : 'a -> 'a seq
val map : ('a -> 'b) -> 'a seq -> 'b seq
val concat : 'a seq -> 'a seq -> 'a seq
val concat_map : ('a -> 'b seq) -> 'a seq -> 'b seq
```

Il n'y a pas de tests automatiques pour cet exercice (le bouton
`grade` ne sert à rien), à vous de tester vous-mêmes. J'ai fourni les
fonctions `of_list`, `to_list` pour aider à écrire des tests. Par
exemple:

```ocaml
to_list (concat (of_list [1;2]) (of_list [3;4]))
```