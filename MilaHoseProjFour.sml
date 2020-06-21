(*
 * Name: Mila Hose
 * Class: CSCI 421
 * Assignment: Project 4
 * Date: 06/21/2020
 *)

(* 
  Define mylist type that is the same as
  the one on page 172 of the textbook. 
*)
datatype 'element myList = NIL
  | CONS of 'element * 'element myList;

(*
  Define a function prod that returns the 
  product of all integers in a mylist of integers.
*)
fun prod NIL = 1
  | prod (CONS (a, b)) = a * prod b;

(*
  Write a function append of type ‘a mylist -> ‘a mylist -> ‘a mylist 
  that takes two mylist values, a and b, and return a mylist contains 
  all the values in a followed by all the values in b.
*)
fun append NIL ys = ys
  | append (CONS(x, xs)) ys = CONS(x, append xs ys)

(*
  Write a function reverse of type ‘a list -> ‘a list that takes a 
  mylist x and return a mylist of all elements of x, in a reverse order.
*)
fun reverse NIL = NIL
  | reverse (CONS(x, xs)) = append (reverse xs) (CONS(x, NIL))