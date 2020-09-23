source "../yrun_template.sh"

source='helloworld'

# mode='C'
mode='Brainfuck'

if [[ ${mode} == 'C' ]]; then
    gcc -o "${source}.out" "${source}.c"
    "./${source}.out"
elif [[ ${mode} == 'Brainfuck' ]]; then
    bfc "${source}.brainf" #`-o` option to specifies the output didn't work as expected.
    mv "a.out" "${source}.out"
    "./${source}.out"
else
    exit 1
fi

