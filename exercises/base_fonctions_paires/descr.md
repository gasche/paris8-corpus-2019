Définir la fonction polymorphe `swap`
qui inverse les deux éléments d'une paire.

```
val swap : ('a * 'b) -> ('b * 'a)
```

---

On définit un type pour représenter une personne
comme une paire, son nom et son age.
```
type personne = string * int
```
Définir et tester des fonctions:
```
val nom : personne -> string
val age : personne -> int
``` 
Par exemple on veut avoir `nom ("Abdallah", 99) = "Abdallah"`,
`age ("Abdallah", 99) = 99`.

---

Définir une fonction
```
val bonjour : string * int -> string
```
telle que, par exemple,
`bonjour ("Abdallah", 3)`
renvoie `"Bonjour Abdallah !"`.
