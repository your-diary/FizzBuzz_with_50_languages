source "../yrun_template.sh"

source='fizzbuzz_01'
# source='fizzbuzz_02'

csc "${source}.cs"
chmod a+x "${source}.exe"
"./${source}.exe"

