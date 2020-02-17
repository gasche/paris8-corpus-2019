# Exercices ANF, récursivité: exponentiation rapide générique

On veut généraliser le code d'exponentiation rapide précédent
à n'importe quel type, muni de:
- une opération de multiplication
- une valeur neutre pour cette opération (comme 1 pour la multiplication)

(Les mathématiciens appellent cette structure un monoïde):

```
type 'a monoid = 'a * ('a -> 'a -> 'a)
```

Par exemple:

```
let monoid_mult : int monoid = (1, ( * ))
let monoid_add : int monoid = (0, ( + ))
let monoid_string : string monoid = ("", ( ^ ))
let monoid_list : 'a monoid = ([], List.append)
```

Écrire la version généralisée de l'exponentiation rapide:

```
val pow : 'a monoid -> 'a -> int -> 'a
```

Cette généralisation est utile en pratique,
par exemple pour calculer l'exponentiation de matrices.