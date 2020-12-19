(* oddP : int -> bool *)
(* REQUIRES: n>=0 *)
(* ENSURES: oddP n evaluates to true if n is odd *)
fun oddP (0:int):bool = false
    | oddP 1 = true
    | oddP n = oddP(n-2);