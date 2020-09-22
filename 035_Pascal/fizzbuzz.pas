// This is a comment.

//`begin` and `end` correspond to blocks in C++.

program FizzBuzz;
uses sysutils;

function GetFizzBuzz(i: Integer): String;

    function IsFizz(i: Integer): Boolean;
        begin
            IsFizz := (i Mod 3 = 0); //We shall use the function name instead of the keyword `Result`, which shall be used in Object Pascal.
        end;

    function IsBuzz(i: Integer): Boolean;
        begin
            IsBuzz := (i Mod 5 = 0);
        end;

    begin
        if (IsFizz(i) and IsBuzz(i)) then
            GetFizzBuzz := 'FizzBuzz'
        else if (IsFizz(i)) then
            GetFizzBuzz := 'Fizz'
        else if (IsBuzz(i)) then
            GetFizzBuzz := 'Buzz'
        else
            GetFizzBuzz := IntToStr(i)
    end;

var
    i: Integer;
    s: String;

begin
    for i := 1 to 100 do
        begin
            s := GetFizzBuzz(i);
            Writeln(s);
        end;
end.

