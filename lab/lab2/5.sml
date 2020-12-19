(* tree * int -> bool *)
(* 要求输入树为有序树，若树中包含值为输入数的节点，则返回true，否则返回false *)
fun binarySearch (Empty,_) = false
  | binarySearch (Node(t1,x,t2),input) =
    case Int.compare(input,x) of
      LESS => binarySearch(t1,input)
    | EQUAL => true
    | GREATER => binarySearch(t2,input);

(* 测试 *)
(* 构造一个有序树 *)
fun createSortedTree [] = Empty
  | createSortedTree (x::L) = 
    Ins(x,createSortedTree(L));
val sortedTree = createSortedTree [9,8,7,6,5,4,3,2,1];
binarySearch(sortedTree,0);   (*false*)
binarySearch(sortedTree,2);   (*true*)
binarySearch(sortedTree,5);   (*true*)
binarySearch(sortedTree,7);   (*true*)
binarySearch(sortedTree,10);  (*false*)