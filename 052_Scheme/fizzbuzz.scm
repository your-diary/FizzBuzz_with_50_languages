; This is a comment.

(define (fizzbuzz i)
    (cond
        ((and (= 0 (modulo i 3)) (= 0 (modulo i 5))) "FizzBuzz")
        ((= 0 (modulo i 3)) "Fizz")
        ((= 0 (modulo i 5)) "Buzz")
        (else i)
    )
)

(define (fizzbuzz_recursive i)
    (if (<= i 100)
        (begin
            (display (fizzbuzz i))
            (newline)
            (fizzbuzz_recursive (+ i 1))
        )
    )
)

(fizzbuzz_recursive 1)

