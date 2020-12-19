(*比较、树类型定义*)
datatype order = LESS | EQUAL | GREATER;

datatype tree = Empty | Node of tree * int * tree;

(*比较大小*)
fun compare(x,y) = 
    if x < y then LESS
    else if x > y then GREATER
      else EQUAL;