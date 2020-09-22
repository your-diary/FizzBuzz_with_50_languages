(* This is a comment. *)

let fizzbuzz i =
    match (i mod 3), (i mod 5) with
        0, 0 -> "FizzBuzz" |
        0, _ -> "Fizz" |
        _, 0 -> "Buzz" |
        _    -> string_of_int i

let () =
    for i = 1 to 100 do
        print_endline @@ fizzbuzz i (* `A @@ B` is equivalent to `A (B)`. *)
    done

