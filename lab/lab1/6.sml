(* divisibleByThree : int -> bool *)
(* REQUIRES: true *)
(* ENSURES: divisibleByThree n evaluates to true if n is a multiple of 3 and to false otherwise *)
fun divisibleByThree (n:int):bool = 
        n = (n div 3) * 3;