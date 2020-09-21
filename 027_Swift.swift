// This is a comment.

func fizzbuzz(i: Int) -> String {
    if (i % 3 == 0 && i % 5 == 0) {
        return "FizzBuzz"
    } else if (i % 3 == 0) {
        return "Fizz"
    } else if (i % 5 == 0) {
        return "Buzz"
    } else {
        return String(i)
    }
}

for num in 1...100 {
    print(fizzbuzz(i: num))
}

