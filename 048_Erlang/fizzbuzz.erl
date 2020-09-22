% This is a comment.

-module(fizzbuzz).
-export([main/0]). %Let the function called `main` be usable outside this module.

fizzbuzz(0) -> ok; %Does nothing when the argument is zero.
fizzbuzz(N) ->
    fizzbuzz(N - 1),
    X = if
        (N rem 3 == 0) and (N rem 5 == 0) -> "FizzBuzz"; %`rem` calculates the remainder.
        N rem 3 == 0 -> "Fizz";
        N rem 5 == 0 -> "Buzz";
        true -> integer_to_list(N)
    end,
    io:format("~s~n", [X]). %`~s` specifies a string.
                            %`~n` is a new line.
                            %The second argument of `io:format` shall be an array but it has only one element in this case.

main() ->
    fizzbuzz(100).

