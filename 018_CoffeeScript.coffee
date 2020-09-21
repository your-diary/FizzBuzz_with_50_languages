# This is a comment.

# Like Python, indentation is important.

fizzbuzz = (i) ->
    if ((i % 3 is 0) and (i % 5 is 0)) then "FizzBuzz"
    else if (i % 3 is 0) then "Fizz"
    else if (i % 5 is 0) then "Buzz"
    else i

console.log fizzbuzz i for i in [1..100]

