#!/bin/bash

make_executable () {
	for file in *.sh; do
		[ -e "$file" ] || continue

		newname="${file%.sh}"

		cp "$file" "$newname"

		chmod +x "$newname"

	done
}
