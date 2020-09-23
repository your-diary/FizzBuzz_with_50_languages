// This is a comment.

class FizzBuzz {

    static function main(): Void {
        for (i in 1...101) {
            var result = fizzbuzz(i);
            trace(result);
        }
    }

    static function fizzbuzz(i: Int): String {
        if (isFizz(i) && isBuzz(i)) {
            return "FizzBuzz";
        } else if (isFizz(i)) {
            return "Fizz";
        } else if (isBuzz(i)) {
            return "Buzz";
        } else {
            return Std.string(i);
        }
    }

    static function isFizz(i: Int): Bool {
        return (i % 3 == 0);
    }

    static function isBuzz(i: Int): Bool {
        return (i % 5 == 0);
    }

}

