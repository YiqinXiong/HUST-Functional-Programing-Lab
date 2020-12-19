(* convert: int * int -> int list -> int list *)
(* REQUIRE: b1,b2>1，L为b1进制数的int list表示 *)
(* ENSURE: convert(b1,b2) L 将b1进制数的列表形式
 * 转换为b2进制数列表形式
 * 即满足 toInt b2(convert(b1,b2) L) = toInt b1 L
 *)
fun convert (b1,b2) L =
    let
        val n = toInt b1 L
    in
        toBase b2 n
    end;

(* 测试 *)
toInt 5 (convert(10,5) [2,4]) = toInt 10 [2,4]; (* 结果应为true *)
