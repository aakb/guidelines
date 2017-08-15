#!/usr/bin/env bash
dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
base_dir=$(cd $(dirname "${BASH_SOURCE[0]}")/.. && pwd)

files=$(find $base_dir/docs -name '*.md')
if [ ! -z "$*" ]; then
		files=$*
fi

$dir/node_modules/.bin/markdownlint --config=$dir/.markdownlint.json $files 2>&1 | sed "s@$base_dir/@@"
