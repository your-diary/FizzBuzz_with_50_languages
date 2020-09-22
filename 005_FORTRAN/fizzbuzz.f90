! This is a comment.

PROGRAM fizzbuzz
    IMPLICIT NONE !forbids implicit type declarations
    INTEGER :: i  !defines the variable `i`
    DO i = 1, 100
        IF (MOD(i, 3) == 0 .AND. MOD(i, 5) == 0) THEN
            PRINT "(a)", "FizzBuzz" !`"(a)"` is the format specifier for string.
        ELSE IF (MOD(i, 3) == 0) THEN
            PRINT "(a)", "Fizz"
        ELSE IF (MOD(i, 5) == 0) THEN
            PRINT "(a)", "Buzz"
        ELSE
            PRINT "(I0)", i !`"(I0)"` is the format specifier for integer.
        END IF
    END DO
END PROGRAM fizzbuzz

