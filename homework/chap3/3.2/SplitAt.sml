(*把树拆成小于x的和大于等于x的两棵树*)
fun SplitAt(x, Empty) = (Empty , Empty)
    | SplitAt(x, Node(t1, y, t2)) =
        case compare(x, y) of
            LESS => let
                    val (l_tree, r_tree) = SplitAt(x, t1)
                in
                    (l_tree, Node(r_tree, y, t2))
                end
        | _ => let
                val (l_tree, r_tree) = SplitAt(x, t2)
            in
                (Node(t1, y, l_tree), r_tree)
            end;
         