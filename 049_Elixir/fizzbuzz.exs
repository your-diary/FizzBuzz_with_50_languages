# This is a comment.

defmodule FizzBuzz do

    def getValue(i) do
        cond do
            (Integer.mod(i, 3) == 0 && Integer.mod(i, 5) == 0) -> "FizzBuzz"
            Integer.mod(i, 3)  == 0 -> "Fizz"
            Integer.mod(i, 5)  == 0 -> "Buzz"
            :else -> i
        end
    end

end

for i <- 1..100 do
    IO.puts FizzBuzz.getValue(i)
end

