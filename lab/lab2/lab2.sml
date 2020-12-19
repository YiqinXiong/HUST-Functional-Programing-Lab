(*树类型定义*)
datatype tree = Empty | Node of tree * int * tree;

(*树的中序遍历*)
fun trav Empty = []
    | trav(Node(t1,x,t2)) = trav t1 @ (x :: trav t2);