let rec included_sorted li1 li2 =
  failwith "TODO"

let included li1 li2 =
  included_sorted
    (List.sort compare li1)
    (List.sort compare li2)
