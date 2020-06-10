(*
 * Name: Mila Hose
 * Class: CSCI 421
 * Assignment: Project 1
 * Date: 06/10/2020
 *)

(* Returns cube root as integer *)
fun cube n = n * n * n;

(* Returns cube root as real *)
fun cube2 n:real = n * n * n;

(* Returns sum of squared integers from 0-n *)
fun sqsum x = 
	if x > 0 then x * x + sqsum(x - 1)
	else 0;

(* Returns max list element *)
fun maxhelper (x, largest) =
	if null x then largest
	else if hd x > largest then maxhelper(tl x, hd x)
	else maxhelper(tl x, largest);

(* Returns the result of the maxhelper function *)
fun max x = maxhelper (tl x, hd x);