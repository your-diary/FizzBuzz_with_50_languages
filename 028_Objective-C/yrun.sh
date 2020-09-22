source "../yrun_template.sh"

gcc -std=gnu11 -lgnustep-base -lobjc "${source}.m" -o "${source}.out"
"./${source}.out"

