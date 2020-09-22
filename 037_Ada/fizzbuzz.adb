-- This is a comment.

with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure FizzBuzz is
begin
    for i in 1 .. 100 loop
        if (i mod 3 = 0 and i mod 5 = 0) then
            Ada.Text_IO.Put_Line("FizzBuzz");
        elsif (i mod 3 = 0) then
            Ada.Text_IO.Put_Line("Fizz");
        elsif (i mod 5 = 0) then
            Ada.Text_IO.Put_Line("Buzz");
        else
            Ada.Integer_Text_IO.Put(i, 0);
            Ada.Text_IO.Put_Line("");
        end if;
    end loop;
end

FizzBuzz;

