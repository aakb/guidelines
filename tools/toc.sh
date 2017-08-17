#!/usr/bin/env bash
dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
base_dir=$(cd $(dirname "${BASH_SOURCE[0]}")/.. && pwd)

files=$(find $base_dir/docs -name '*.md')
if [ ! -z "$*" ]; then
		files=$*
fi

for file in $files; do
  echo $file | sed "s@$base_dir/@@"
  $dir/node_modules/.bin/markdown-toc -i $file
done
