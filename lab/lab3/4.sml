(* findOdd: int list -> int option *)
fun findOdd [] = NONE
    | findOdd (x::L) = 
        if (x mod 2)=1 then
            SOME x
        else
            findOdd L;

(* 测试 *)
val list1 = [1,2,3,4,5];
findOdd list1;     (* 正确应得出SOME 1 *)
val list2 = [2,4,6,8,10];
findOdd list2;     (* 正确应得出NONE *)