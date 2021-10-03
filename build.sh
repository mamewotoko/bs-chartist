#! /bin/bash
set -ex
npm run build
$(npm bin)/browserify -t babelify examples/line.bs.js -o examples/js/line.js
