000010* This is a comment.
000020* A COBOL program consist of divisions and the identification division, which explains what this program is, shall come first.
000030
100000  IDENTIFICATION DIVISION.
100010  PROGRAM-ID.    FIZZBUZZ.
100020
200000  DATA DIVISION.
200010  WORKING-STORAGE SECTION.
200011* `PIC 999` means it is an integer and can have at most three digits.
200020  01 COUNTER PIC 999 VALUE 0.
200030  01 IS_FIZZ PIC 9   VALUE 0.
200040  01 IS_BUZZ PIC 9   VALUE 0.
200050
300000  PROCEDURE DIVISION.
300010      PERFORM 100 TIMES
300020          ADD 1 TO COUNTER
300030          COMPUTE IS_FIZZ = FUNCTION MOD(COUNTER 3)
300040          COMPUTE IS_BUZZ = FUNCTION MOD(COUNTER 5)
300050          IF (IS_FIZZ = 0 AND IS_BUZZ = 0) THEN
300060              DISPLAY "FizzBuzz"
300070          ELSE IF (IS_FIZZ = 0) THEN
300080              DISPLAY "Fizz"
300090          ELSE IF (IS_BUZZ = 0) THEN
300100              DISPLAY "Buzz"
300110          ELSE
300111*             /* Removes the trailing zeros. */
300112              IF (COUNTER < 10) THEN
300113                  DISPLAY COUNTER (3:)
300115              ELSE
300117                  DISPLAY COUNTER (2:)
300118              END-IF
300130          END-IF
300140      END-PERFORM.
300020  STOP RUN.

