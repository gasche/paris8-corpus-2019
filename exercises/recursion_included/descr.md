Écrire une fonction

```ocaml
val mem  : 'a -> 'a list -> bool
```

qui teste si une valeur apparaît dans une liste:
- `mem 3 [8; 3; 5]` est vrai,
- `mem 2 [1; 6]` est faux.

En utilisant `mem`, écrire une fonction

```ocaml
val included : 'a list -> 'a list -> bool
```
