let rec replace m f =
  match m with
    | Leaf l -> f l
    | Node (n, children) ->
       Node (n, List.map (fun t -> replace t f) children)
