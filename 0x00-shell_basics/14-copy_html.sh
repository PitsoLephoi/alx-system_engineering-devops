#!/bin/bash

source_dir=$(pwd)
parent_dir=$(dirname "$source_dir")

find "$source_dir" -name "*.html" -type f | while read -r file; do
	target_file="$parent_dir/$(basename "$file")"
		if [ ! -e "$target_file" ] || [ "$file" -nt "$target_file" ]; then
			cp -u "$file" "$target_file"
		fi
done
