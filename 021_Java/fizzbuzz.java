// This is a comment.

public class fizzbuzz {

    private int max_;

    //constructor
    public fizzbuzz(int max) {
        this.max_ = max;
    }

    public void run_() {
        for (int i = 1; i <= this.max_; ++i) {
            printNum_(i);
        }
    }

    public void printNum_(int i) {
        if (i % 15 == 0) {
            System.out.println("FizzBuzz");
        } else if (i % 3 == 0) {
            System.out.println("Fizz");
        } else if (i % 5 == 0) {
            System.out.println("Buzz");
        } else {
            System.out.println(i);
        }
    }

    public static void main(String[] args) {
        fizzbuzz fb = new fizzbuzz(100);
        fb.run_();
    }

}

