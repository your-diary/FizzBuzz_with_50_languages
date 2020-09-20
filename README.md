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
./<source>.out`
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
node.js <source>.js
```

Installation: `sudo pacman -S nodejs`

### 017. TypeScript

<!-- vim: set spell: -->

