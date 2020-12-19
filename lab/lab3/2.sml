(* mapList: (('a->'b)*'a list)->'b list *)
fun mapList(f, []) = []
    | mapList(f, x::L) = (f x)::mapList(f, L);

(* 测试 *)
val doubleX = fn x => 2*x;
val list1 = [1,2,3,4,5];
mapList(doubleX, list1);     (* 正确应得出[2,4,6,8,10] *)