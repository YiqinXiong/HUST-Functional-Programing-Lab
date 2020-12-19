(* toBase: int -> int -> int list *)
(* REQUIRE: n为10进制，且n>=0,b>1 *)
(* ENSURE: toBase b n 将十进制数n转换为b进制数的int list形式 *)
fun toBase b 0 = []
    | toBase b n =
        let
            val (r,q) = (n mod b, n div b)
        in
            r::(toBase b q)
        end;

(* 测试 *)
toBase 5 42;        (* 结果应为[2,3,1] *)