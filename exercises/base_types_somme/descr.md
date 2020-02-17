On définit le type des adresses vu en cours:

```
type address =
  | Telephone of int * string
  | Email of string
```

Exemples d'utilisation:

```
let me = Email "gabriel.scherer@inria.fr"
let not_really_me = Telephone (33, "123456789")
```

Définir une fonction qui prend une adresse et renvoie `"email"` si
c'est un email, `"telephone"` si c'est un numéro de téléphone.

```
val description : address -> string
```