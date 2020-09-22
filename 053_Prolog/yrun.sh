source "../yrun_template.sh"

echo | gprolog --consult-file "${source}.prolog" --query-goal "$(sed -n '/^?- /s/...//; //s/.$//; //p' "${source}.prolog")"

