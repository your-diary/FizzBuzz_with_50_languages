-- This is a comment.

function fizzbuzz(i)

    is_fizz = function (i) return (i % 3 == 0) end
    is_buzz = function (i) return (i % 5 == 0) end

    if (is_fizz(i) and is_buzz(i)) then
        return "FizzBuzz"
    elseif (is_fizz(i)) then
        return "Fizz"
    elseif (is_buzz(i)) then
        return "Buzz"
    else
        return i
    end

end

for i = 1, 100 do
    print(fizzbuzz(i))
end

