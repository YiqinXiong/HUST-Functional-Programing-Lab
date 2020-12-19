(* exists: ('a->bool)->'a list->bool *)
(* ENSURE: exists p L => true if there is an x in L such that p x = true, false otherwise *)
fun exists p [] = false
    | exists p (x::L) =
        if (p x) then
            true
        else
            exists p L;

(* forall: ('a->bool)->'a list->bool *)
(* ENSURE: forall p L => true if p x = true for every item x in L, false otherwise *)
fun forall p [] = false
    | forall p [x] = 
        if (p x) then
            true
        else
            false
    | forall p (x::L) =
        if (p x) andalso (forall p L) then
            true
        else
            false;

(* 测试 *)
val lessThan10 = fn x => x<10;  (* x小于10返回true，其他情况false *)
val list1 = [1,2,3,4,5];
val list2 = [6,7,8,9,10];
val list3 = [11,12,13,14,15];
exists lessThan10 list1;        (* 正确应得出true *)
exists lessThan10 list2;        (* 正确应得出true *)
exists lessThan10 list3;        (* 正确应得出false *)
forall lessThan10 list1;        (* 正确应得出true *)
forall lessThan10 list2;        (* 正确应得出false *)
forall lessThan10 list3;        (* 正确应得出false *)