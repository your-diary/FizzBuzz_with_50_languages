# Usage: seq 100 | awk -f 039_AWK_02.awk

function fizzbuzz(i) {
    if (i % 3 == 0 && i % 5 == 0) {
        return "FizzBuzz";
    } else if (i % 3 == 0) {
        return "Fizz";
    } else if (i % 5 == 0) {
        return "Buzz";
    } else {
        return i;
    }
}

{
    print fizzbuzz($0);
}

