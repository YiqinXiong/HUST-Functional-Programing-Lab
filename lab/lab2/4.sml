(* tree -> tree *)
(* 对树进行反转 *)
fun revT Empty = Empty
  | revT(Node(t1,x,t2)) = 
    Node(revT t2, x, revT t1);

(* 测试，若相等则返回true *)
trav(revT tree1) = reverse(trav tree1);