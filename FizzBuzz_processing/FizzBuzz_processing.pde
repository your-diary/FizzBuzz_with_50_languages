// This is a comment.

String fizzbuzz(int i) {
    if (i % 3 == 0 && i % 5 == 0) {
        return "FizzBuzz";
    } else if (i % 3 == 0) {
        return "Fizz";
    } else if (i % 5 == 0) {
        return "Buzz";
    } else {
        return Integer.toString(i);
    }
}

void setup() {
    for (int i = 1; i <= 100; ++i) {
        println(fizzbuzz(i));
    }
    exit();
}

