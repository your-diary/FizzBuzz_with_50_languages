source "../yrun_template.sh"

nasm -felf64 "${source}.asm"
ld "${source}.o" -o "${source}.out"
"./${source}.out"

