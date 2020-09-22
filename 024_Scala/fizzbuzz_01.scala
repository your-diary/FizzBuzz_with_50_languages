// This is a comment.

object FizzBuzz {

    def main(args: Array[String]): Unit = {
        for (i <- 1 to 100) {
            println(fizzbuzz(i))
        }
    }

    def fizzbuzz(i: Int): String = {
        var isfizz = (i % 3 == 0)
        var isbuzz = (i % 5 == 0)
        if (isfizz && isbuzz) {
            "FizzBuzz"
        } else if (isfizz) {
            "Fizz"
        } else if (isbuzz) {
            "Buzz"
        } else {
            i.toString
        }
    }

}

