(* int list -> int list * int list *)
(* 将list拆分成长度相差小于1的两个list *)
fun split [] = ([],0,[])
    | split [x] = ([],x,[])
    | split (x::L) =
        let
            val (A,y,B) = split L
        in
            if length(A) > length(B) then
                (A, x, y::B)
            else
                (y::A, x, B)
        end;

(* int list -> tree *)
(* 将一个表转为平衡树 *)
fun listToTree [] = Empty
    | listToTree [x] = Node(Empty,x,Empty)
    | listToTree L =
        let
            val (A,y,B) = split L
        in
            Node(listToTree A, y, listToTree B)
        end;

(* 测试 *)
val list1 = [1,2,3,4,5,6,7,8,9,10];
val tree1 = listToTree list1;
trav tree1;