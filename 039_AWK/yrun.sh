source "../yrun_template.sh"

source='fizzbuzz_01'
# source='fizzbuzz_02'

if [[ ${source} == 'fizzbuzz_01' ]]; then
    awk -f "${source}.awk"
elif [[ ${source} == 'fizzbuzz_02' ]]; then
    seq 100 | awk -f "${source}.awk"
else
    exit 1
fi

