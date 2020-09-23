# This is a comment.

function fizzbuzz(i)
    if (i % 3 == 0 && i % 5 == 0)
        return "FizzBuzz"
    elseif (i % 3 == 0)
        return "Fizz"
    elseif (i % 5 == 0)
        return "Buzz"
    else
        return i
    end
end

for i = 1:100
    println(fizzbuzz(i))
end

