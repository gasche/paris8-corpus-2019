# Exercices ANF, récursivité: facteurs premiers

Écrire une fonction

```
val prime_factors : int -> int list
```

qui renvoie les facteurs premiers de l'entrée, avec multiplicité:
- tous les nombres de la liste sont premiers (note: 1 n'est pas premier)
- si on multiplie les nombres de la liste, on retrouve le nombre de départ

Par exemple, `prime_facts 4` est `[2; 2]`.

On demande les facteurs en ordre croissant; vous pouvez utiliser
`List.sort Pervasives.compare list` pour trier la liste en ordre
croissant après-coup.