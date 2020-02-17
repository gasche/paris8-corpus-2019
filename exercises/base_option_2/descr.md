Écrire une fonction

    val multiply : int -> int option -> int option

qui renvoie la multiplication de son premier argument avec le deuxième
s'il est `Some`, et renvoie `None` sinon. Par exemple,
`multiply 3 (Some 2)` est `Some 6`, et `multiply 3 None` est `None`.
