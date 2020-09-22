class FizzBuzz {

    int max_;

    FizzBuzz(int max) {
        this.max_ = max;
    }

    void Run_() {
        for (int i = 1; i <= max_; ++i) {
            System.Console.WriteLine(this.Check_(i));
        }
    }

    string Check_(int i) {
        if (i % 15 == 0) {
            return "FizzBuzz";
        } else if (i % 3 == 0) {
            return "Fizz";
        } else if (i % 5 == 0) {
            return "Buzz";
        } else {
            return i.ToString();
        }
    }

    public static void Main() {
        FizzBuzz fb = new FizzBuzz(100);
        fb.Run_();
    }

}

