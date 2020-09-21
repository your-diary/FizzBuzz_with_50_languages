// This is a comment.

fun main() {
    for (i in 1..100) {
        var res = fizzbuzz(i)
        System.out.println(res)
    }
}

fun fizzbuzz(i: Int): String {
    return when {
        (i % 3 == 0 && i % 5 == 0) -> "FizzBuzz"
        (i % 3 == 0) -> "Fizz"
        (i % 5 == 0) -> "Buzz"
        else -> i.toString()
    }
}

