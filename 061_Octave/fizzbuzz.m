# This is a comment.

for i=1:100
    if (mod(i, 3) == 0 && mod(i, 5) == 0)
        disp('FizzBuzz')
    elseif (mod(i, 3) == 0)
        disp('Fizz')
    elseif (mod(i, 5) == 0)
        disp('Buzz')
    else
        printf('%d\n', i)
    endif
end

