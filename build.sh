#! /bin/bash
set -ex
npm run build
$(npm bin)/browserify -t babelify examples/main.bs.js -o examples/js/main.js
