# FizzBuzz with 50+ Languages

# 1. About

In this project, we implement the FizzBuzz game with 50+ programming languages.

#### References

- 『[プログラミング言語大全](https://gihyo.jp/book/2020/978-4-297-11347-6)』(Encyclopedia of Programming Languages) by [kujirahand.com](https://kujirahand.com/)

# 2. Contents

For each programming language, this project includes

1. How to install the compiler or the interpreter for the language (see [*Setup Development Environments*](#setup)).

2. How to use such tools (see [*Setup Development Environments*](#setup)).

3. How to comment out string in the language (see the first line of the source code).

4. How to implement the FizzBuzz game (see the source code). For a limited number of difficult languages (e.g. Assembly), we only implemented Hello World.

# 3. Assumptions

## OS

Unless otherwise, we use Arch Linux.

## Shell Environments

Hereafter, we define the function `aur()` as follows.

```bash
function aur() {
    if [[ $# == 0 || $1 == "-h" || $1 == "--help" ]]; then
        echo "Usage: aur <AUR package name>"
        return 0
    fi
    git clone "https://aur.archlinux.org/${1}.git"
}
```

And we execute the following command.
```bash
mkdir ~/Build
```

# 4. Usage

1. Read [*Setup Development Environments*](#setup) and setup the development environment for the language.

2. `cd ./093_Some_Language`

3. `bash yrun.sh`

# 5. How to Add Languages

This section is for contributors of this project.

1. `mkdir 093_Some_Language`

2. `cd 093_Some_Language`

3. `cp ../yrun.sh .`

4. `echo 'some_language_interpreter --run "${source}.some_extension"' >> yrun.sh` (The variable `source` is by default defined as `fizzbuzz` in `../yrun_template.sh`, which is sourced from `yrun.sh`. You do **not** have to define it.)

5. Put the source code `fizzbuzz.some_extension` here.

6. `bash yrun.sh > x && vimdiff x ../correct_output.txt` to check the result is correct.

7. Confirm `fizzbuzz.some_extension` starts with a comment line (e.g. `# This is a comment.`).

<a id='setup'></a>
# 6. Setup Development Environments

## 001. C

```bash
gcc <source>.c -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc`

## 002. Go

```bash
go run <source>.go
```

Installation: `sudo pacman -S go`

## 003. Assembly

```bash
nasm -felf64 <source>.asm
ld <source>.o -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S nasm`

## 004. C++

```bash
g++ <source>.cpp -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc`

## 005. FORTRAN

```bash
gfortran <source>.f90 -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc-fortran`

## 006. D

```bash
dmd <source>.d -of=<source>.out
./<source>.out
```

Installation: `sudo pacman -S dlang-dmd`

## 007. Rust

```bash
rustc --allow unused_parens <source>.rs -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S rust`

## 008. Python

```bash
python3 <source>.py
```

Installation: `sudo pacman -S python`

## 009. Ruby

```bash
ruby <source>.rb
```

Installation: `sudo pacman -S ruby`

## 010. Crystal

```bash
crystal <source>.cr
```

Installation: `sudo pacman -S crystal`

## 011. PHP

```bash
php <source>.php
```

Installation: `sudo pacman -S php`

<details>
<summary>Additional Notes</summary>

You can embed PHP codes into HTML and serve it by parsing the PHP part server-side. For Apache, read [*Apache HTTP Server - ArchWiki*](https://wiki.archlinux.org/index.php/Apache_HTTP_Server#Using_libphp) and open `./011_PHP_02.php`.

</details>

## 012. Lua

```bash
lua <source>.lua
```

Installation: `sudo pacman -S lua`

## 013. MoonScript

Only a compiler for Windows is [supplied](https://github.com/leafo/moonscript). However, you can use the official online compiler: [*MoonScript Online Compiler*](https://moonscript.org/compiler/)

## 014. Perl

```bash
perl <script>.pl
```

Installation: `sudo pacman -S perl`

## 015. Raku (Perl 6)

```bash
rakudo <source>.p6
```

Installation
```bash
cd ~/Build
aur moarvm
cd moarvm/
makepkg -sir

cd ~/Build
aur nqp
cd nqp/
makepkg -sir

cd ~/Build
aur rakudo
cd rakudo/
makepkg -sir
```

## 016. JavaScript

```bash
node <source>.js
```

Installation: `sudo pacman -S nodejs`

## 017. TypeScript

```bash
tsc <source>.ts
node <source>.js
```

Installation: `sudo pacman -S typescript`

## 018. CoffeeScript

```bash
coffee <source>.coffee
```

Installation: `sudo pacman -S coffeescript`

## 019. Dart

```bash
dart <source>.dart
```

Installation: `sudo pacman -S dart`

## 020. WebAssembly

```bash
/usr/lib/emscripten/emcc <source>.cpp -s WASM=1 -o <source>.html
```

This command outputs `<source>.html`, `<source>.js` and `<source>.wasm`. They shall be served via a HTTP server. See [*Compiling a New C/C++ Module to WebAssembly - MDN*](https://developer.mozilla.org/en-US/docs/WebAssembly/C_to_wasm) for the detail.

Installation: `sudo pacman -S emscripten`

## 021. Java

```bash
/usr/lib/jvm/java-14-openjdk/bin/javac <source>.java
/usr/lib/jvm/java-14-openjdk/bin/java <source>
```

Installation: `sudo pacman -S jdk-openjdk`

## 022. Vim script

```bash
vim -c 'source <source>.exscript'
```

Installation: `sudo pacman -S gvim`

## 023. Kotlin

```bash
kotlinc <source>.kt
kotlin _<source>
```

Installation: `sudo pacman -S kotlin`

## 024. Scala

```bash
scala <source>.scala
```

Installation: `sudo pacman -S scala`

## 025. Groovy

```bash
export JAVA_HOME=/usr/lib/jvm/java-14-openjdk
groovy <source>.groovy
```

Installation: `sudo pacman -S groovy`

## 026. Processing

```bash
cd <source> #The source code `<source>.pde` shall exist here.
processing-java --sketch="${PWD}" --run
```

Installation: `sudo pacman -S processing`

## 027. Swift

```bash
swift <source>.swift
```

Installation
```bash
cd ~/Build
aur swift-bin
cd swift-bin/
makepkg -sir
```

## 028. Objective-C

```bash
gcc -std=gnu11 -lgnustep-base -lobjc <source>.m -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc-objc gnustep-base`

## 029. C#

```bash
csc <source>.cs
chmod a+x <source>.exe
./<source>.exe
```

or

```bash
csc <source>.cs
mono <source>.exe
```

Installation: `sudo pacman -S dotnet-sdk`

## 030. F#

```bash
dotnet fsi <source>.fsx
```

Installation: `sudo pacman -S dotnet-sdk`

## 031. Visual Basic

```bash
vbc <source>.vb
chmod a+x <source>.exe
./<source>.exe
```

or

```bash
csc <source>.vb
mono <source>.exe
```

Installation
```bash
sudo pacman -S dotnet-sdk

cd ~/Build
aur mono-basic
cd mono-basic/
makepkg -sir
```

## 032. VBA (Visual Basic for Applications)

In this section, we assume you are using Windows and Excel 2016.

1. Open `Excel`.

2. `View` > `Macros` > `View Macros`

3. Type a macro name you want.

4. Click `Create`.

5. Write your code.

6. Type <kbd>F5</kbd>.

7. Click `Run`.

## 033. GAS (Google Apps Script)

```bash
mkdir <project directory>
cd <project directory>
clasp create --type standalone --title <project title>
vi <source>.js
clasp push
script_id=$(sed 's/.*:"//; s/"}//' .clasp.json)
firefox "https://script.google.com/d/${script_id}/edit"
#Click `Run` or type `Ctrl+r` to run the script.
#Click `View` and `Logs` or type `Ctrl+Enter` to view the output.
```

Although you can run the script from the command-line via `clasp run [<function name>]`, the preparations for the command to work are quite complex. See [*run.md - google/clasp*](https://github.com/google/clasp/blob/master/docs/run.md) for the detail.

Installation
```bash
npm install --global @google/clasp

#Visit https://script.google.com/home/usersettings and enable the Apps Script API.

clasp login
```

## 034. Object Pascal (Delphi)

```bash
fpc -Mdelphi <source>.pas
./<source>
```

Installation: `sudo pacman -S fpc`

## 035. Pascal

```bash
fpc <source>.pas
./<source>
```

Installation: `sudo pacman -S fpc`

## 036. ALGOL

```bash
a68g <source>.a68
```

Installation: `sudo pacman -S algol68g`

## 037. Ada

```bash
gnatmake <source>.adb
./<source>
```

Installation: `sudo pacman -S gcc-ada`

## 038. Wolfram Language

```bash
wolfram -script <source>.m
```

Installation: Consult the official instructions. You can display the activation key in *https://user.wolfram.com/portal/myProducts.html*.

## 039. AWK

```bash
awk -f <source>.awk
```

Installation: `sudo pacman -S gawk`

## 040. sed

```bash
sed --file=<source>.sed
```

Installation: `sudo pacman -S sed`

## 041. PowerShell

```bash
/opt/microsoft/powershell/7/pwsh <source>.ps1
```

Installation
```bash
cd ~/Build
aur powershell
cd powershell/
makepkg -sir
```

## 042. Command Prompt

```bash
#Open `cmd.exe` in Windows.

start <source>.bat
```

## 043. Bash

```bash
bash <source>.sh
```

Installation: `sudo pacman -S bash`

## 044. AppleScript

```bash
#Open `Terminal` in macOS.

osascript <source>.applescript
```

Installation: Pre-installed.

## 045. Haskell

```bash
ghc -dynamic <source>.hs
./<source>
```

or

```bash
runhaskell <source>.hs
```

Installation: `sudo pacman -S ghc`

## 046. OCaml

```bash
ocaml <source>.ml
```

Installation: `sudo pacman -S ocaml`

## 047. Standard ML

```bash
smlnj < <source>.sml
```

Installation: `sudo pacman -S smlnj`

## 048. Erlang

```bash
erlc <source>.erl
erl -noshell -s <source> <function name> -s init stop
```

Installation: `sudo pacman -S erlang`

## 049. Elixir

```bash
elixir <source>.exs
```

Installation: `sudo pacman -S elixir`

## 050. Common Lisp

```bash
clisp <source>.lisp
```

Installation: `sudo pacman -S clisp`

## 051. Clojure

```bash
clojure <source>.clj
```

Installation: `sudo pacman -S clojure`

## 052. Scheme

```bash
scheme --batch-mode < <source>.scm
```

Installation: `sudo pacman -S mit-scheme`

## 053. Prolog

```bash
echo | gprolog --consult-file "${source}.prolog" --query-goal <query command>
```

Installation: `sudo pacman -S gprolog`

## 054. Smalltalk

```bash
gst <source>.st
```

Installation: `sudo pacman -S smalltalk`

## 055. BASIC

```bash
fbc -lang deprecated <source>.bas
./<source>
```

Installation: `sudo pacman -S freebasic`

## 056. COBOL

```bash
cobc -x <source>.cobol
./<source>
```

Installation: `sudo pacman -S gnucobol`

## 057. Nadesiko

```bash
cnako3 <source>.nako3
```

Installation: `npm install --global nadesiko3`

## 058. HSP (Hot Soup Processor)

```bash
hspcmp <source>.hsp
hsp3cl <source>.ax
```

Installation
```bash
#Hereafter we use Ubuntu because
#1. Only debian-based distributions are officially supported.
#2. With newer `gcc`, `make` fails since the C++ source codes are written badly.
#   See |https://github.com/onitama/OpenHSP/issues/12| for the detail.
#   Of course, Arch Linux uses the latest `gcc` by default, which is problematic in this case.
docker run -it ubuntu

set -o vi

apt update
apt install gcc git make vim

git clone "https://github.com/onitama/OpenHSP"
cd OpenHSP/
sed -i 's/sudo //g' setup.sh
./setup.sh
```

## 059. R

```bash
R --no-echo --file=<source>.r
```

Installation: `sudo pacman -S r`

## 060. Julia

```bash
julia <source>.jl
```

Installation: `sudo pacman -S julia`

## 061. Octave

```bash
octave <source>.m
```

Installation: `sudo pacman -S octave`

## 062. Haxe

```bash
haxe --run <source>.hx
```

Installation: `sudo pacman -S haxe`

## 063. Nim

```bash
nim compile --run <source>.nim
```

or

```bash
nim compile <source>.nim
./<source>
```

Installation: `sudo pacman -S nim`

## 064. Brainfuck

```bash
bfc <source>.brainf
mv 'a.out' <source>.out
./<source>.out
```

Installation
```bash
cd ~/Build
aur brainfuck
cd brainfuck
makepkg -sir
```

## 065. gnuplot

```bash
gnuplot <source>.gp
```

Installation: `sudo pacman -S gnuplot`

## 066. bc

```bash
bc <source>.bc
```

Installation: `sudo pacman -S bc`

<!-- vim: set spell: -->

