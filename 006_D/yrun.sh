source "../yrun_template.sh"

dmd "${source}.d" -of="${source}.out"
"./${source}.out"

