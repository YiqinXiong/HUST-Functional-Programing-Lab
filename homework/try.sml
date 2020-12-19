fun divplus(x,y) = 
let
    val divi:int = x div y
    val plus:int = x + y
in
    (divi,plus):int * int
end;