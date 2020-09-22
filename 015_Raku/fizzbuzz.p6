# This is a comment.

sub fizzbuzz(Int $n) {
    given [$n % 3, $n % 5] {
        when [0, 0] { "FizzBuzz" }
        when [0, *] { "Fizz" }
        when [*, 0] { "Buzz" }
        default { $n }
    }
}

for 1..100 {
    fizzbuzz($_).say;
}

