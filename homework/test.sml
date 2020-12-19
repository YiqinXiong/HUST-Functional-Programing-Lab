(*sum:int list->int*)
(*REQUIRES:true    *)
(*ENSURES:sum(L) evaluates to the sum of the integers in L.*)
fun sum(x::L1, y::L2) = x+y;
