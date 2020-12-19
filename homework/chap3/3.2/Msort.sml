(* tree -> tree ，归并排序*)
fun Msort Empty = Empty
    | Msort(Node(t1, x, t2)) =
        Ins(x, Merge(Msort t1, Msort t2));