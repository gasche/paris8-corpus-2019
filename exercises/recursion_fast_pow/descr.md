# Exercices ANF, récursivité: exponentiation rapide

Étant donné un entier `x`, il y a deux façons de calculer la puissance
quatrième de `x`, souvent notée `x^4` (OCaml ne connaît pas cet opérateur):

```
let x4 = x * x * x * x

let x4 =
  let x2 = x * x in
  x2 * x2
```

La deuxième expression utilise seulement deux multiplications, donc
elle est plus rapide.

Le même principe peut s'utiliser pour la puissance cinquième:

```
let x5 =
  let x2 = x * x in
  x2 * x2 * x
```

On peut généraliser, par exemple définir `x8` en seulement trois
multiplications, comme `x4 * x4`.

Le but de cet exercice est d'utiliser cette approche pour calculer une
puissance arbitraire de `x` de façon "rapide": définir

```
val pow : int -> int -> int
```

tel que `pow a n` calcule `a^n` de cette façon (quand `n >= 0`).

Il faudra utiliser `n mod 2`, l'opérateur modulo en OCaml.
