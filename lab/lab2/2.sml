(* int list * int list -> int list *)
(* 两个list合并，且交替出现 *)
fun interleave(l1,[]) = l1
    | interleave([],l2) = l2
    | interleave(x::l1,y::l2) = x::y::interleave(l1,l2);

(* 测试 *)
val list1 = [1,2,3,4,5];
val list2 = [6,7,8,9,10,11,12];
interleave(list1,list2);