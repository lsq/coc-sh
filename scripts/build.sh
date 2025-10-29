#!/usr/bin/env bash

projectHome=$(git rev-parse --show-toplevel)
pwd
cd "$projectHome" || exit 1
npm run build
cp -rf ./lib/extension.js ~/.cache/vim/coc/extensions/node_modules/coc-sh/lib/extension.js
