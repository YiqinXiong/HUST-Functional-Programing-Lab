(* thenAddOne: ((int->int)*int)->int *)
fun thenAddOne (f, x) = f x + 1;

(* 测试 *)
val doubleX = fn x => 2*x;
thenAddOne(doubleX,10);     (* 正确应得出21 *)