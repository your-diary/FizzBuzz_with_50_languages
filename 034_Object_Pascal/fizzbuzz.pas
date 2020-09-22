// This is a comment.

//`begin` and `end` correspond to blocks in C++.

program FizzBuzz;
uses sysutils;

function GetFizzBuzz(i: Integer): String;

    function IsFizz(i: Integer): Boolean;
        begin
            Result := (i Mod 3 = 0);
        end;

    function IsBuzz(i: Integer): Boolean;
        begin
            Result := (i Mod 5 = 0);
        end;

    begin
        if (IsFizz(i) and IsBuzz(i)) then
            Result := 'FizzBuzz'
        else if (IsFizz(i)) then
            Result := 'Fizz'
        else if (IsBuzz(i)) then
            Result := 'Buzz'
        else
            Result := IntToStr(i)
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

