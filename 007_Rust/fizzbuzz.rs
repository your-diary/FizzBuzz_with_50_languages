// This is a comment.

fn fizzbuzz(i: i32) -> String {
    //defines lambda functions
    let is_fizz = |i| i % 3 == 0;
    let is_buzz = |i| i % 5 == 0;

    if (is_fizz(i) && is_buzz(i)) {
        "FizzBuzz".to_string()
    } else if (is_fizz(i)) {
        "Fizz".to_string()
    } else if (is_buzz(i)) {
        "Buzz".to_string()
    } else {
        i.to_string()
    }
}

fn main() {
    for i in 1..101 {
        let result = fizzbuzz(i);
        println!("{}", result);
    }
}
