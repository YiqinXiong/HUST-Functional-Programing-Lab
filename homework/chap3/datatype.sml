(*比较、树类型定义*)
datatype order = LESS | EQUAL | GREATER;

datatype tree = Empty | Node of tree * int * tree;

