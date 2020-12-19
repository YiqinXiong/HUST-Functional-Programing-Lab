(* toInt: int -> int list -> int *)
(* REQUIRE: L为b（b>1）进制数的int list表示 *)
(* ENSURE: toInt b L为其相应的整数值 *)
fun toInt b [] = 0
    | toInt b (x::L) = x + (b * (toInt b L));

(* 测试 *)
val base2ToInt = toInt 2;
base2ToInt [0,1];       (* 结果应为2 *)
base2ToInt [1,0,1];     (* 结果应为5 *)