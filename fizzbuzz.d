// This is a comment.

import std.stdio;

void fizzbuzz(int num) {
    foreach (i; 1 .. num + 1) {
        if (i % 15 == 0) {
            writeln("FizzBuzz");
        } else if (i % 3 == 0) {
            writeln("Fizz");
        } else if (i % 5 == 0) {
            writeln("Buzz");
        } else {
            writeln(i);
        }
    }
}

void main() {
    fizzbuzz(100);
}

