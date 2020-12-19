(*插入x到有序树中，小于插入左子树，等于或大于插入右子树*)
fun Ins(x, Empty) = Node(Empty, x, Empty)
    | Ins(x, Node(t1, y, t2)) =
        case compare(x,y) of
            LESS => Node(Ins(x, t1), y, t2)
        | _ => Node(t1, y, Ins(x, t2));