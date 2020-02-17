```ocaml
val filter : ('a -> bool) -> 'a list -> 'a list

val non_negative : int list -> int list
non_negative [3; -2; 6; -5; 7] = [3; 6; 7]
(demande: utiliser filter)
```
