```ocaml
val map : ('a -> 'b) -> 'a list -> 'b list
map f [x1; x2; ...; xn] = [f x1; f x2; ...; f xn]

val add_2_each : int list -> int list
add_2_each [x1; x2; ..; xn] = [x1 + 2; x2 + 2; ..; xn + 2]
(demande: utiliser map)
```
