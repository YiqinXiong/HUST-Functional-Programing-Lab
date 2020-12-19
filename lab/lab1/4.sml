(* mult' : int list * int -> int *)
(* REQUIRES: true *)
(* ENSURES: mult'(L) evaluates to the product of the integers in L and a. *)
fun mult' ([],a) = a
    | mult' (x::L,a) = mult'(L,x*a);
