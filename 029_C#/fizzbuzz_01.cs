// This is a comment.

class FizzBuzz {

    public static void cout(string s) {
        System.Console.WriteLine(s);
    }

    public static void Main() {
        for (int i = 1; i <= 100; ++i) {
            if (i % 3 == 0 & i % 5 == 0) {
                cout("FizzBuzz");
            } else if (i % 3 == 0) {
                cout("Fizz");
            } else if (i % 5 == 0) {
                cout("Buzz");
            } else {
                cout(i.ToString());
            }
        }
    }

}

