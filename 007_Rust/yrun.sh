source "../yrun_template.sh"

rustc --allow unused_parens "${source}.rs" -o "${source}.out"
"./${source}.out"

