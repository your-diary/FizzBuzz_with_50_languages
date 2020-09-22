' This is a comment.

Imports System

Module Module1

    Sub Main()
        Dim i As Integer '`Dim` means "determine".
        For i = 1 To 100
            Console.WriteLine(fizzbuzz(i))
        Next
    End Sub

    Public Function fizzbuzz(i As Integer) As String
        If ((i Mod 3 = 0) And (i Mod 5 = 0)) Then
            Return "FizzBuzz"
        ElseIf (i Mod 3 = 0) Then
            Return "Fizz"
        ElseIf (i Mod 5 = 0) Then   
            Return "Buzz"
        Else
            Return CStr(i)
        End If
    End Function

End Module

