(* This is a comment. *)

For [i = 1, i <= 100, ++i,
    If [Mod[i, 3] == 0 && Mod[i, 5] === 0, Print["FizzBuzz"],
    If [Mod[i, 3] == 0, Print["Fizz"],
    If [Mod[i, 5] == 0, Print["Buzz"],
    Print[i]
    ]]]
]

