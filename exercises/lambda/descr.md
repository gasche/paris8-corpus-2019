En utilisant seulement des fonctions (`fun ... -> ...`) et des
variables (en particulier, les constructions `if` et `match` sont
interdites), redéfinir des booléens "maisons" et un test
conditionnel : une fonction `my_if : ... -> 'a -> 'a -> 'a`, et des
valeurs `my_true` et `my_false`, telles que:

- `my_if my_true truc machin` vaut `truc`, et
- `my_if my_false truc machin` vaut `machin`.

Le type de `my_true` et `my_false` ne sera pas `bool` : on cherche
précisément une façon de redéfinir des booléens, en utilisant
uniquement des fonctions.