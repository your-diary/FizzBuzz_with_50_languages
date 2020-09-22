% This is a comment.

fizzbuzz(N) :-
    (0 is N mod 3), (0 is N mod 5), write('FizzBuzz'), nl;
    (0 is N mod 3), write('Fizz'), nl;
    (0 is N mod 5), write('Buzz'), nl;
    true, write(N), nl.

?- forall(between(1, 100, I), fizzbuzz(I)).

