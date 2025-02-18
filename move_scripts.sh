#!/bin/bash

move_scripts () {
	if [ -z "$1" ] || [ -z "$2" ]; then
		echo "Usage: move_scripts /path/to/dir/from /path/to/dir/to"
		return 1
	fi

	if [ ! -d "$1" ]; then
		echo "Source directory does not exist"
	fi

	if [ ! -d "$2" ]; then
		echo "Destination directory does not exist"
	fi

	for file in "$1"/*.sh; do
		[ -e "$file" ] || continue

		mv "$file" "$2/"
		echo "Moved: $file -> $2/"
	done
}
