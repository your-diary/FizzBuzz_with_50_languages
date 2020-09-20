class FizzBuzz

    def initialize(max)
        @max = max
        @is_fizz = lambda { |n| (n % 3 == 0) }
        @is_buzz = lambda { |n| (n % 5 == 0) }
    end

    def run
        1.upto(@max) { |n| (puts check(n)) } #???
    end

    def check(n)
        if (@is_fizz.call(n) and @is_buzz.call(n))
            "FizzBuzz"
        elsif (@is_fizz.call(n))
            "Fizz"
        elsif (@is_buzz.call(n))
            "Buzz"
        else
            n
        end
    end

end

fb = FizzBuzz.new(100)
fb.run()

