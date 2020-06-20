(*
 * Name: Mila Hose
 * Class: CSCI 421
 * Assignment: Project 3
 * Date: 06/20/2020
 *)

(*
  Define a function mymap1 with the same type and behavior 
  as built-in map function but without using map. This 
  should be one-line of code. Use foldr or foldl).
*)
fun mymap1 f L = foldr (fn (a, b) => f a :: b) [] L

(*
  Define a function mymap2 with the same type and behavior as map. 
  No map, foldr, or foldl can be used.
*)
fun mymap2 f nil = nil
  | mymap2 f (a::b) = f a :: mymap2 f b;

(*
  Write a function ordList of type char list -> int list that 
  takes a list of characters and returns the list of the integer 
  codes of those characters. For example, if you evaluate 
  ordList [#"A", #"b", #"C"] you should get [65, 98, 67].
*)
fun ordList x = map ord x;

fun ordList_mymap1 x = mymap1 ord x;

fun ordList_mymap2 x = mymap2 ord x;

(*
  Write a function mylength of type ‘a list -> int that returns 
  the length of a list. You cannot use the built-in length function.
*)
fun myLength s = foldl (fn (_, y) => 1 + y) 0 s

(*
  Write a function maxList of type int list -> int that returns 
  the largest element of a list of integers. Your function 
  need not behave well if the list is empty.
*)
fun maxList L = foldr (fn (a, b) => if a > b then a else b) (hd L) L;