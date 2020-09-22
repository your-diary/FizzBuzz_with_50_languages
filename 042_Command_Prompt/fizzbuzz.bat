REM This is a comment.

:: This is a comment.

@echo OFF

REM I don't understand why this is needed. Probably for using `!<var name>!`?
REM |https://ss64.com/nt/delayedexpansion.html| may help.
setlocal enabledelayedexpansion

    ::`/l` option specifies a ranged-for loop.
    for /l %%i in (1, 1, 100) do (

        ::`/a` option specifies that the rhs shall be evaluated as an expression.
        set /a fizzbuzz=%%i %% 15
        set /a fizz=%%i %% 3
        set /a buzz=%%i %% 5

        ::The condition shall not be embraced in a parenthesis.
        if !fizzbuzz! equ 0 (
            echo FizzBuzz
        ) else (
            if !fizz! equ 0 (
                echo Fizz
            ) else (
                if !buzz! equ 0 (
                    echo Buzz
                ) else (
                    echo %%i
                )
            )
        )
    )

endlocal

