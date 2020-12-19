(* int list * int list -> int list *)
(* 辅助函数，revhelp(L,M)的结果是将L的逆序存入M并在L为空时返回M *)
fun revhelp ([],M) = M
    | revhelp (x::L,M) = revhelp (L,x::M);

(* int list -> int list *)
(* 表参数的逆序输出 *)
fun reverse' L = revhelp (L,[]);

(* 测试 *)
val list1 = [1,2,3,4,5];
reverse list1;