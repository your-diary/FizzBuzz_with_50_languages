# This is a comment.

def fizzbuzz(i)
    if (i % 3 == 0 and i % 5 == 0)
        "FizzBuzz" #`return` can be omitted here.
    elsif (i % 3 == 0)
        "Fizz"
    elsif (i % 5 == 0)
        "Buzz"
    else
        i
    end
end

1.upto(100) do |i|
    puts fizzbuzz(i)
end

