' This is a comment.

Sub WriteFizzBuzz()
    For i = 1 To 100
        Sheet1.Cells(i, 1) = FizzBuzz(i)
    Next
End Sub

Function FizzBuzz(i) As String
    If (i Mod 3 = 0 And i Mod 5 = 0) Then
        FizzBuzz = "FizzBuzz"
    ElseIf (i Mod 3 = 0) Then
        FizzBuzz = "Fizz"
    ElseIf (i Mod 5 = 0) Then
        FizzBuzz = "Buzz"
    Else
        FizzBuzz = Str(i)
    End If
End Function

