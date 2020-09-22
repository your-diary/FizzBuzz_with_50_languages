//Uses a class.

package main
import ("fmt")

type FizzBuzz struct {
    Cur int
    Max int
}

func (p *FizzBuzz) Run() {
    for ; p.Cur <= p.Max; p.Cur++ {
        fmt.Println(p.GetValue())
    }
}

func (p *FizzBuzz) IsFizz() bool {
    return (p.Cur % 3 == 0)
}

func (p *FizzBuzz) IsBuzz() bool {
    return (p.Cur % 5 == 0)
}

func (p * FizzBuzz) GetValue() string {
    switch {
        case (p.IsFizz() && p.IsBuzz()): return "FizzBuzz"
        case (p.IsFizz()): return "Fizz"
        case (p.IsBuzz()): return "Buzz"
        default: return fmt.Sprint(p.Cur)
    }
}

func main() {
    fb := FizzBuzz{1, 100}
    fb.Run()
}

