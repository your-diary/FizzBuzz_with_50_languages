# Brainfuck

# 0. Requirements

- To fully understand this documentation, you shall be able to write C.

# 1. Syntax

## 1.1 Comments

- Any non-reserved characters are regarded as comments.

- Any strings inside the first pair of `[` and `]` are regarded as comment. You should understand the reason for this, reading through this documentation.

## 1.2 Internal Components

In Brainfuck, there are three essential components.

| Name | Explanation |
|:-|:-|
| Data Array          | An array defined as `char data[30000] = {0};`. |
| Data Pointer        | The pointer `char *ptr = data;`. |
| Instruction Pointer | The internal parser which moves forward, parses the instructions in the source code and executes the specified command. |

Table 1.1: Internal Components in Brainfuck.

## 1.3 Reserved Characters

In Brainfuck, there are eight reserved characters.

| Character | Explanation |
|:-|:-|
| > | `++ptr;` |
| < | `--ptr;` |
| + | `++*ptr;` |
| - | `--*ptr;` |
| . | `putchar(*ptr);` |
| , | `*ptr = getchar();` |
| [ | `while (*ptr) {` |
| ] | `}` |

Table 1.2: Reserved Characters in Brainfuck.

## 1.4 References

1. [Brainfuck - Wikipedia](https://en.wikipedia.org/wiki/Brainfuck)

# 2. Examples

## 2.1 Hello World

### 2.1.1 C

Here is a C version of Hello World (`./helloworld.c`) under the limitation of using only the components listed in the Table 1.2.

```C
#include <stdio.h>

char data[30000] = {0};

void print(char c) {
    static char *ptr = data;
    *ptr += c;
    putchar(*ptr);
    ++ptr;
}

int main(void) {

    print('H');
    print('e');
    print('l');
    print('l');
    print('o');
    print(' ');
    print('W');
    print('o');
    print('r');
    print('l');
    print('d');
    print('!');
    print('\n');

}
```

### 2.1.2 Brainfuck

Reading the code above, you may easily understand how to port it Brainfuck. For example, to print a new line character in Brainfuck, you can just write as follows, taking into account that the ASCII character code of `\n` is `10`. Spaces are inserted just for the aesthetic purpose.
```
+++++ +++++ .>
```

So this is a Hello World in Brainfuck (`./helloworld.brainf`).
```
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>

++++++++++++++++++++++++++++++++.>

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>

+++++++++++++++++++++++++++++++++.>

++++++++++.>
```

# 3. Helper Scripts

## 3.1 `bf2c.py`

`./bf2c.py` is a Python script which converts a Brainfuck source file to a C source file. Execute `./bf2c.py --help` for the usage.

For example, `./bf2c.py helloworld.brainf output.c` gives the following output. The header file `./brainfuck.h` is also included in this repository.
```C
#include <stdio.h>
#include "./brainfuck.h"

int main(void) {

    *ptr += 72;
    putchar(*ptr);
    ++ptr;
    *ptr += 101;
    putchar(*ptr);
    ++ptr;
    *ptr += 108;
    putchar(*ptr);
    ++ptr;
    *ptr += 108;
    putchar(*ptr);
    ++ptr;
    *ptr += 111;
    putchar(*ptr);
    ++ptr;
    *ptr += 32;
    putchar(*ptr);
    ++ptr;
    *ptr += 87;
    putchar(*ptr);
    ++ptr;
    *ptr += 111;
    putchar(*ptr);
    ++ptr;
    *ptr += 114;
    putchar(*ptr);
    ++ptr;
    *ptr += 108;
    putchar(*ptr);
    ++ptr;
    *ptr += 100;
    putchar(*ptr);
    ++ptr;
    *ptr += 33;
    putchar(*ptr);
    ++ptr;
    *ptr += 10;
    putchar(*ptr);
    ++ptr;

}
```





<!-- vim: set spell: -->

