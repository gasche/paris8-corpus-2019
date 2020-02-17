```ocaml
val rev : 'a list -> 'a list
rev [a; b; c] = [c; b; a]
(conseil: commencer par rev_append)

val rev_append : 'a list -> 'a list -> 'a list
rev_append [a; b; c] [d; e; f] = [c; b; a; d; e; f]
```
