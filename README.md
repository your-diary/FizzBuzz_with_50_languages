!!! 元ソースのライセンスを確認しておく !!!

## Definitions

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

```bash
mkdir ~/Build
```

```bash
yrun.sh
yrun_template.sh
```

## Compilers / Interpreters

### 001. C

```bash
gcc <source>.c -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc`

### 002. Go

```bash
go run <source>.go
```

Installation: `sudo pacman -S go`

### 003. Assembly

```bash
nasm -felf64 <source>.asm
ld <source>.o -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S nasm`

### 004. C++

```bash
g++ <source>.cpp -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc`

### 005. FORTRAN

```bash
gfortran <source>.f90 -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc-fortran`

### 006. D

```bash
dmd <source>.d -of=<source>.out
./<source>.out
```

Installation: `sudo pacman -S dlang-dmd`

### 007. Rust

```bash
rustc --allow unused_parens <source>.rs -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S rust`

### 008. Python

```bash
python3 <source>.py
```

Installation: `sudo pacman -S python`

### 009. Ruby

```bash
ruby <source>.rb
```

Installation: `sudo pacman -S ruby`

### 010. Crystal

```bash
crystal <source>.cr
```

Installation: `sudo pacman -S crystal`

### 011. PHP

```bash
php <source>.php
```

Installation: `sudo pacman -S php`

<details>
<summary>Additional Notes</summary>

You can embed PHP codes into HTML and serve it by parsing the PHP part server-side. For Apache, read [*Apache HTTP Server - ArchWiki*](https://wiki.archlinux.org/index.php/Apache_HTTP_Server#Using_libphp) and open `./011_PHP_02.php`.

</details>

### 012. Lua

```bash
lua <source>.lua
```

Installation: `sudo pacman -S lua`

### 013. MoonScript

Only a compiler for Windows is [supplied](https://github.com/leafo/moonscript). However, you can use the official online compiler: [*MoonScript Online Compiler*](https://moonscript.org/compiler/)

### 014. Perl

```bash
perl <script>.pl
```

Installation: `sudo pacman -S perl`

### 015. Raku (Perl 6)

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

### 016. JavaScript

```bash
node <source>.js
```

Installation: `sudo pacman -S nodejs`

### 017. TypeScript

```bash
tsc <source>.ts
node <source>.js
```

Installation: `sudo pacman -S typescript`

### 018. CoffeeScript

```bash
coffee <source>.coffee
```

Installation: `sudo pacman -S coffeescript`

### 019. Dart

```bash
dart <source>.dart
```

Installation: `sudo pacman -S dart`

### 020. WebAssembly

```bash
/usr/lib/emscripten/emcc <source>.cpp -s WASM=1 -o <source>.html
```

This command outputs `<source>.html`, `<source>.js` and `<source>.wasm`. They shall be served via a HTTP server. See [*Compiling a New C/C++ Module to WebAssembly - MDN*](https://developer.mozilla.org/en-US/docs/WebAssembly/C_to_wasm) for the detail.

Installation: `sudo pacman -S emscripten`

### 021. Java

```bash
/usr/lib/jvm/java-14-openjdk/bin/javac <source>.java
/usr/lib/jvm/java-14-openjdk/bin/java <source>
```

Installation: `sudo pacman -S jdk-openjdk`

### 022. Vim script

```bash
vim -c 'source <source>.exscript'
```

Installation: `sudo pacman -S gvim`

### 023. Kotlin

```bash
kotlinc <source>.kt
kotlin _<source>
```

Installation: `sudo pacman -S kotlin`

### 024. Scala

```bash
scala <source>.scala
```

Installation: `sudo pacman -S scala`

### 025. Groovy

```bash
export JAVA_HOME=/usr/lib/jvm/java-14-openjdk
groovy <source>.groovy
```

Installation: `sudo pacman -S groovy`

### 026. Processing

```bash
cd <source> #The source code `<source>.pde` shall exist here.
processing-java --sketch="${PWD}" --run
```

Installation: `sudo pacman -S processing`

### 027. Swift

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

### 028. Objective-C

```bash
gcc -std=gnu11 -lgnustep-base -lobjc <source>.m -o <source>.out
./<source>.out
```

Installation: `sudo pacman -S gcc-objc gnustep-base`

### 029. C#

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

### 030. F#

```bash
dotnet fsi <source>.fsx
```

Installation: `sudo pacman -S dotnet-sdk`

### 031. Visual Basic

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

### 032. VBA (Visual Basic for Applications)

In this section, we assume you are using Windows and Excel 2016.

1. Open `Excel`.

2. `View` > `Macros` > `View Macros`

3. Type a macro name you want.

4. Click `Create`.

5. Write your code.

6. Type <kbd>F5</kbd>.

7. Click `Run`.

### 033. GAS (Google Apps Script)

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

### 034. Object Pascal (Delphi)

```bash
fpc -Mdelphi <source>.pas
./<source>
```

Installation: `sudo pacman -S fpc`

### 035. Pascal

```bash
fpc <source>.pas
./<source>
```

Installation: `sudo pacman -S fpc`

### 036. ALGOL

```bash
a68g <source>.a68
```

Installation: `sudo pacman -S algol68g`

### 037. Ada

```bash
gnatmake <source>.adb
./<source>
```

Installation: `sudo pacman -S gcc-ada`

### 038. Wolfram Language

```bash
wolfram -script <source>.m
```

Installation: Consult the official instructions. You can display the activation key in *https://user.wolfram.com/portal/myProducts.html*.

### 039. AWK

```bash
awk -f <source>.awk
```

Installation: `sudo pacman -S gawk`

### 040. sed

```bash
sed --file=<source>.sed
```

Installation: `sudo pacman -S sed`

### 041. PowerShell

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

### 042. Command Prompt

```bash
#Open `cmd.exe` in Windows.

start <source>.bat
```

### 043. Bash

```bash
bash <source>.sh
```

Installation: `sudo pacman -S bash`

### 044. AppleScript

```bash
#Open `Terminal` in macOS.

osascript <source>.applescript
```

Installation: Pre-installed.

### 045. Haskell

```bash
ghc -dynamic <source>.hs
./<source>
```

or

```bash
runhaskell <source>.hs
```

Installation: `sudo pacman -S ghc`

### 046. OCaml

```bash
ocaml <source>.ml
```

Installation: `sudo pacman -S ocaml`

### 047. Standard ML

```bash
smlnj < <source>.sml
```

Installation: `sudo pacman -S smlnj`

### 048. Erlang

```bash
erlc <source>.erl
erl -noshell -s <source> <function name> -s init stop
```

Installation: `sudo pacman -S erlang`

### 049. Elixir

```bash
elixir <source>.exs
```

Installation: `sudo pacman -S elixir`


<!-- vim: set spell: -->

