# This is a comment.

#To declare a variable, you can also use the `our` keyword.
#`my` declares a local variable whilst `our` declares a global variable.
#See |https://stackoverflow.com/questions/845060/what-is-the-difference-between-my-and-our-in-perl| for the detail.

sub fizzbuzz {

    my $i = $_[0];
    my $is_fizz = ($i % 3 == 0);
    my $is_buzz = ($i % 5 == 0);

    return 'FizzBuzz' if ($is_fizz && $is_buzz);
    return 'Fizz' if ($is_fizz);
    return 'Buzz' if ($is_buzz);
    $i; #This last `return` can be omitted.

}

for my $i (1..100) {
    print fizzbuzz($i)."\n";
}

