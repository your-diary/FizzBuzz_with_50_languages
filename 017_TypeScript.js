// This is a comment.
var fizzbuzz = function (num) {
    var isFizz = function (i) { return (i % 3 === 0); };
    var isBuzz = function (i) { return (i % 5 === 0); };
    if (isFizz(num) && isBuzz(num)) {
        return 'FizzBuzz';
    }
    else if (isFizz(num)) {
        return 'Fizz';
    }
    else if (isBuzz(num)) {
        return 'Buzz';
    }
    else {
        return num.toString();
    }
};
for (var i = 1; i <= 100; ++i) {
    console.log(fizzbuzz(i));
}
