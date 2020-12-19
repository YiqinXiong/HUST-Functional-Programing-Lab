(*树中结点数 = 左size+右size+1*)
fun size Empty = 0
    | size(Node(t1,_,t2)) = size t1 + size t2 + 1;