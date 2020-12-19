(* mult : int list -> int *)
(* REQUIRES: true *)
(* ENSURES: mult(L) evaluates to the product of the integers in L. *)
fun mult [] = 1
    | mult(x::L) = x * (mult L);
(* Mult : int list list -> int *)
(* REQUIRES: true *)
(* ENSURES: Mult(R) evaluates to the product of all the integers in the lists of R. *)
fun Mult [] = 1
    | Mult(r::R) = (mult r)*(Mult R);
