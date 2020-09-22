source "../yrun_template.sh"

/usr/lib/emscripten/emcc "${source}.cpp" -s WASM=1 -o "${source}.html"

