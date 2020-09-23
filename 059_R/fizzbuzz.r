# This is a comment.

a <- seq(100)
b <- a
b[a %% 3 == 0] <- "Fizz"
b[a %% 5 == 0] <- "Buzz"
b[a %% 3 == 0 & a %% 5 == 0] <- "FizzBuzz"
cat(b, sep = "\n")

