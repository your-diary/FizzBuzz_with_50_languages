source "../yrun_template.sh"

project_title='fizzbuzz'

clasp create --type standalone --title "${project_title}"
clasp push
script_id=$(sed 's/.*:"//; s/"}//' .clasp.json)
firefox "https://script.google.com/d/${script_id}/edit" & disown

