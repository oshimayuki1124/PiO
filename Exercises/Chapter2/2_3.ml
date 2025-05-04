(* 1 *)
8*-2;;
(* 予想：Unbound value :"*-" *)
(* 出力：Unbound value :"*-" *)

(* 2 *)
int_of_string "0xfg";;
(* 予想：0xfgが16進になっていないことによるエラー *)
(* 出力：Exception: Failure "int_of_string". *)

(* 3 *)
int_of_float -0.7;;
(* 予想：-を適用できないみたいなエラー *)
(* 出力：Error: This expression has type float -> int
               but an expression was expected of type int *)
(* 理由：-の両側がintだと型推論されるところに，float->int型の関数int_of_floatが来ているから *)