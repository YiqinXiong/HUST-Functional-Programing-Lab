(* 类型定义 *)
datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree;

(* treeFilter: ('a->bool)->'a tree->'a option tree *)
(* ENSURE: 将树中满足条件P ('a->bool)的节点封装成option类型保留，否则替换成NONE *)
fun treeFilter P Empty = Empty
    | treeFilter P (Node(t1, x, t2)) =
        if (P x) then
            Node(treeFilter P t1, SOME x, treeFilter P t2)
        else
            Node(treeFilter P t1, NONE, treeFilter P t2);

(* 测试 *)
val lessThan10 = fn x => x<10;  (* x小于10返回true，其他情况false *)
val tree1 = Node(Node(Empty,5,Empty),10,Node(Empty,15,Empty));  (* 正确应得出Node(Node(Empty,SOME 5,Empty),NONE,Node(Empty,NONE,Empty)) *)
treeFilter lessThan10 tree1;
