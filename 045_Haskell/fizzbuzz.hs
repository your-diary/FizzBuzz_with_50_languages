-- This is a comment.

module Main where

--`A $` means "tokesn after this shall be treated as the argument to `A`". Parentheses can instead be used like in other languages.
--Note `printAll` is not a built-in function. We define it now.
main :: IO()
main = printAll $ map fizzBuzz [1..100]
    where
        printAll [] = return ()
        printAll (x:xs) = putStrLn x >> printAll xs --`(x:xs)` assignes the first argument to `x` (scalar) and the remaining arguments to `xs` (array).
                                                    --`>>` is like `;` Bash. The result of the lhs is not input to the rhs.
                                                    --So I think this is a recursive function and `printAll [] = return ()` defines the base case?

fizzBuzz :: Int -> String
fizzBuzz i =
    case (i `mod` 3, i `mod` 5) of
        (0, 0) -> "FizzBuzz"
        (0, _) -> "Fizz"
        (_, 0) -> "Buzz"
        otherwise -> show i

