```ocaml
val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b list -> 'a
fold_left f a [x1; x2; ...; xn] = f (... (f (f a x1) x2)) xn

val sum : int list -> int
sum [1; 3; 6] = 1 + 3 + 6 = 10
(demande: utiliser fold_left)
```
