" This is a comment. The last quote is needed unlike in Vim script. "

"`collect:` corresponds to `map()` in JavaScript."
"`[:<var> | ...]` defines a lambda function."
"`{A. B. C.}` defines a tuple."
"Probably `key` and `value` point to this tuple?"

i := (
    (1 to: 100)
        collect: [:i |
            (
                {15 -> 'FizzBuzz'. 5 -> 'Buzz'. 3 -> 'Fizz'. 1 -> i}
                detect: [:j | (i rem: (j key)) = 0]
            ) value
        ]
)
do: [:k | k displayNl]

