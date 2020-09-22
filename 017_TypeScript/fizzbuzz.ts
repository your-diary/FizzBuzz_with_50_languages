// This is a comment.

const fizzbuzz = (num: number): string => {
    const isFizz = (i: number) => (i % 3 === 0);
    const isBuzz = (i: number) => (i % 5 === 0);
    if (isFizz(num) && isBuzz(num)) {
        return 'FizzBuzz';
    } else if (isFizz(num)) {
        return 'Fizz';
    } else if (isBuzz(num)) {
        return 'Buzz';
    } else {
        return num.toString();
    }
}

for (let i = 1; i <= 100; ++i) {
    console.log(fizzbuzz(i));
}

