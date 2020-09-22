(* This is a comment. *)

local

    fun fizzbuzz_string i =
        case (i mod 3 = 0, i mod 5 = 0) of
            (true, true)   => "FizzBuzz" |
            (true, false)  => "Fizz" |
            (false, true)  => "Buzz" |
            (false, false) => Int.toString i

    (* a recursive function *)
    fun fizzbuzz i =
        if (i = 0) then (
        ) else (
            fizzbuzz (i - 1);
            print ((fizzbuzz_string i) ^ "\n")
        )

in

    val _ = fizzbuzz 100

end

