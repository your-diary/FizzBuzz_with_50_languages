; This is a comment.

;Documentation: |https://clojuredocs.org/|

(defn fizzbuzz [i]
    (cond
        (and (= 0 (mod i 3)) (= 0 (mod i 5))) "FizzBuzz"
        (= 0 (mod i 3)) "Fizz"
        (= 0 (mod i 5)) "Buzz"
        :else i
    )
)

(dotimes [i 100]
    (println (fizzbuzz (+ i 1)))
)

