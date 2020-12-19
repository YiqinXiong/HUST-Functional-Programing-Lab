(* int list -> int list *)
(* 表参数的逆序输出 *)
fun reverse [] = []
    | reverse(x::L) = reverse L @ [x];

(* 测试 *)
val list1 = [1,2,3,4,5];
reverse list1;