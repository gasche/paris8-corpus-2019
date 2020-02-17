let swap (a, b) = (b, a)

let nom (nom, _age) = nom
let age (_nom, age) = age

let bonjour (nom, _age) =
  "Bonjour " ^ nom ^ " !"
