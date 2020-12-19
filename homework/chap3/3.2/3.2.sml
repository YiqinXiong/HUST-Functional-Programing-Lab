(*树中结点数 = 左size+右size+1*)
fun size Empty = 0
    | size(Node(t1,_,t2)) = size t1 + size t2 + 1;

(*遍历*)
fun trav Empty = []
    | trav(Node(t1,x,t2)) = trav t1 @ (x :: trav t2);

(*插入x到有序树中，小于插入左子树，等于或大于插入右子树*)
fun Ins(x, Empty) = Node(Empty, x, Empty)
    | Ins(x, Node(t1, y, t2)) =
        case compare(x,y) of
            LESS => Node(Ins(x, t1), y, t2)
        | _ => Node(t1, y, Ins(x, t2));

(*把树拆成小于x的和大于等于x的两棵树*)
fun SplitAt(x, Empty) = (Empty, Empty)
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

(*归并两棵树*)
fun Merge(Empty, t2) = t2
    | Merge(Node(l1, x, r1), t2) =
        let
            val (l2, r2) = SplitAt(x, t2)
        in
            Node(Merge(l1, l2), x, Merge(r1, r2))
        end;
    
(* tree -> tree ，归并排序 *)
fun Msort Empty = Empty
    | Msort(Node(t1, x, t2)) =
        Ins(x, Merge(Msort t1, Msort t2));
         