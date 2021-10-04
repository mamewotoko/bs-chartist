#! /bin/bash
set -ex
npm run build
$(npm bin)/browserify -t babelify examples/main.bs.js -o examples/js/main.js
mkdir -p examples/css
cp node_modules/chartist/dist/*.js examples/js
cp node_modules/chartist/dist/*.css examples/css
