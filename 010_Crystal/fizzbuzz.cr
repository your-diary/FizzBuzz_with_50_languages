# This is a comment.

#Similar to Ruby; compare it with "./009_Ruby_02.rb".

class FizzBuzz

    @is_fizz: Proc(Int32, Bool) #A function which takes `Int32` and returns `Bool`.
    @is_buzz: Proc(Int32, Bool)

    def initialize(max : Int32)
        @max = max
        @is_fizz = -> (n: Int32) { n % 3 == 0 }
        @is_buzz = -> (n: Int32) { n % 5 == 0 }
    end

    def run
        1.upto(100) { |n| (puts check(n)) }
    end

    def check(n)
        if (@is_fizz.call(n) && @is_buzz.call(n))
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

