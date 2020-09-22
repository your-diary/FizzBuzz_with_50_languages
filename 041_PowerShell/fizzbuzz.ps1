# This is a comment.

Function FizzBuzz($i) {

    $isFizz = $i % 3 -eq 0
    $isBuzz = $i % 5 -eq 0

    if ($isFizz -and $isBuzz) {
        return "FizzBuzz"
    } elseif ($isFizz) {
        return "Fizz"
    } elseif ($isBuzz) {
        return "Buzz"
    } else {
        return $i
    }

}

#`|` is a pipe.
#`@` specifies a loop.
@(1..100) | % { FizzBuzz $_ | Write-Host }

