// This is a comment.

//Uses a function.

package main
import ("fmt")

func FizzBuzz(i int) (string) {
    switch {
        case (i % 15 == 0): return "FizzBuzz"
        case (i %  3 == 0): return "Fizz"
        case (i %  5 == 0): return "Buzz"
        default: return fmt.Sprint(i)
    }
}

func main() {
    for i := 1; i <= 100; i++ {
        result := FizzBuzz(i)
        fmt.Println(result)
    }
}

