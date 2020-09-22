; This is a comment.

(defun fizzbuzz(i)
    (cond
        ((and (= 0 (mod i 3)) (= 0 (mod i 5))) "FizzBuzz")
        ((= 0 (mod i 3)) "Fizz")
        ((= 0 (mod i 5)) "Buzz")
        (t (write-to-string i)) ;`t` here means "otherwise".
    )
)

(loop for i from 1 to 100 do
    ;`t` specifies that the output is the standard output.
    ;`~A` specifies a value of any type.
    ;`~%` specifies a new line.
    (format t "~A~%" (fizzbuzz i))
)

