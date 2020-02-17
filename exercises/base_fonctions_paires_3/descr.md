## Choose

Écrire une fonction

```
val choose : bool -> ('a * 'a) -> 'a
```

qui prend un booléen `b` et une paire, et renvoie le premier élément
de la paire si `b` est vrai, et le deuxième élément sinon.


## Select

Écrire une fonction

```
val better : (int * 'a) -> (int * 'a) -> 'a
```

qui renvoie le deuxième élément de la paire dont le premier élément
est le plus grand.

Par exemple, `better (1, true) (3, false)` renvoie `false`, et `better
(99, "Gabriel") (22, "Scherer")` renvoie `"Gabriel"`.
