object FizzBuzz {
    def main(args: Array[String]) = {
        var fizzbuzz = (i: Int) => (i % 3, i % 5) match {
            case (0, 0) => "FizzBuzz"
            case (0, _) => "Fizz"
            case (_, 0) => "Buzz"
            case _      => i.toString
        }
        (1 to 100).map(fizzbuzz).foreach(println)
    }
}

