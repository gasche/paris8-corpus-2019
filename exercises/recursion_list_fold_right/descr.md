```ocaml
val fold_right : ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b
fold_right f [x1; x2; ...; xn] a = f x1 (f x2 (... (f xn a) ..))

duplicate_each : 'a list -> 'a list
duplicate_each [x1; x2; ..; xn] = [x1; x1; x2; x2; ..; xn; xn]
(demande: utiliser fold_right)
```
