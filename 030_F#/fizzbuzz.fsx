// This is a comment.

let fizzbuzz n =
    match (n % 3 = 0), (n % 5 = 0) with
        | true, false  -> "Fizz"
        | false, true  -> "Buzz"
        | true, true   -> "FizzBuzz"
        | false, false -> sprintf "%d" n

[1..100] |> List.iter(fun n -> printfn "%s" (fizzbuzz n)) |> ignore //`ignore` ignores the returned value.

