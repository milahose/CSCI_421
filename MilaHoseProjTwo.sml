(*
 * Name: Mila Hose
 * Class: CSCI 421
 * Assignment: Project 2
 * Date: 06/19/2020
 *)

fun quickSort nil = nil
  | quickSort [single] = [single]
  | quickSort (first::rest) =
    (* Use partition function to recursively sort sublists *)
    let
      fun partition (pivot, nil) = (nil, nil)
        (* Helper function to partion the list into two sublists *)
        | partition (pivot, first::rest) =
          (* Recursively sort the sublists *)
          let
            val (small, large) = partition (pivot, rest) (* pivot to end of list *)
          in
            if first < pivot (* first to pivot *)
              then (first::small, large)
              else (small, first::large)
          end;

      (* create partition of small and large sublists *)
      val (small, large) = partition(first, rest)
    in
      (* Combine two sublists and pivot into final sorted list. *)
      quickSort(small) @ [first] @ quickSort(large)
    end;