(* double : int -> int *)
(* REQUIRES: n>=0 *)
(* ENSURES: double n evaluates to 2*n. *)
fun double (0:int):int = 0
    | double n = 2 + double(n-1);

(* square : int -> int *)
(* REQUIRES: n>=0 *)
(* ENSURES: square n evaluates to n*n. *)
fun square (0:int):int = 0
    | square (1:int):int = 1
    | square n = double(n) + double(n-2) + square(n-2);