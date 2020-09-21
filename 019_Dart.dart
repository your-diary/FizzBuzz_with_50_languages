// This is a comment.

isFizz(int i) {
    return (i % 3 == 0);
}

isBuzz(int i) {
    return (i % 5 == 0);
}

fizzbuzz(int i) {
    if (isFizz(i) && isBuzz(i)) {
        return "FizzBuzz";
    } else if (isFizz(i)) {
        return "Fizz";
    } else if (isBuzz(i)) {
        return "Buzz";
    } else {
        return i;
    }
}

main() {
    for (var i = 1; i <= 100; ++i) {
        var result = fizzbuzz(i);
        print(result);
    }
}

