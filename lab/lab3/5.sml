(* subsetSumOption: int list * int->int list option *)
fun subsetSumOption ([], s) = NONE
    | subsetSumOption (L, 0) = SOME []
    | subsetSumOption (x::L, s) = 
        if subsetSumOption (L, s-x) = NONE then
            subsetSumOption (L, s)
        else
            SOME (x::valOf(subsetSumOption (L, s-x)));

(* 测试 *)
val list1 = [1,2,3,4,5];
subsetSumOption(list1, 0);     (* 正确应得出SOME [] *)
subsetSumOption(list1, 6);     (* 正确应得出SOME [1,2,3] *)
subsetSumOption(list1, 66);    (* 正确应得出NONE *)
