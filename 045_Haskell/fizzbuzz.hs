-- This is a comment.

module Main where

fizzBuzz :: Int -> String
fizzBuzz i =
    case (i `mod` 3, i `mod` 5) of
        (0, 0) -> "FizzBuzz"
        (0, _) -> "Fizz"
        (_, 0) -> "Buzz"
        _ -> show i

main :: IO ()
main = mapM_ (putStrLn . fizzBuzz) [1 .. 100]
