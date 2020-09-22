source "../yrun_template.sh"

vbc "${source}.vb"
chmod a+x "${source}.exe"
"./${source}.exe"

