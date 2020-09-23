001 REM This is a comment.
002
003 REM FreeBASIC has some dialects and the comparison table is found here: |http://www.execulink.com/~coder/fb/docs/fb-kwrd-fbc-git.html|
004 REM Note, in the table, "X" indicates "**is** supported".
005
010 FOR I = 1 TO 100
020     IF ((I MOD 3 = 0) AND (I MOD 5 = 0)) THEN
030         PRINT "FizzBuzz"
040     ELSEIF (I MOD 3 = 0) THEN
050         PRINT "Fizz"
060     ELSEIF (I MOD 5 = 0) THEN
070         PRINT "Buzz"
080     ELSE PRINT STR(I)
090     END IF
100 NEXT I

