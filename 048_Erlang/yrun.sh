source "../yrun_template.sh"

function_name='main'

erlc "${source}.erl"
erl -noshell -s "${source}" "${function_name}" -s init stop

