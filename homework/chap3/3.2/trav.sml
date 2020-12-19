(*遍历*)
fun trav Empty = []
    | trav(Node(t1,x,t2)) = trav t1 @ (x :: trav t2);