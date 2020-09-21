// This is a comment.

def fizzbuzz(i) {
    Closure isFizz = { it % 3 == 0 }
    Closure isBuzz = { it % 5 == 0 }
    if (isFizz(i) && isBuzz(i)) {
        return "FizzBuzz"
    } else if (isFizz(i)) {
        return "Fizz"
    } else if (isBuzz(i)) {
        return "Buzz"
    } else {
        return i
    }
}

for (i in 1..100) {
    println fizzbuzz(i)
}

