3 + 4;
(* val it = 7 *)
3 + 2.0;
(* 错误，real和int类型不匹配，改成3.0 + 2.0 *)
it + 6;
(* val it = 13 *)
val it = "hello";
(* val it = "hello" *)
it + "world";
(* 错误，字符串类型没有+操作符，要用^操作符拼接*)
it + 5;
(* 错误，string和int类型不匹配 *)
val a = 5;
(* val a = 5 *)
a = 6;
(* val it = false *)
a + 8;
(* val a = 13 *)
val twice = (fn x => 2 * x);
(* val twice = fn : int -> int *)
twice a;
(* val it = 10 *)
let x = 1 in x end;
(* 错误，x=1是bool值，给x赋值要用val x = 1 *)
foo;
(* 错误，foo未绑定 *)
[1,"foo"];
(* 错误，list里面不能包含不同类型的成员 *)

