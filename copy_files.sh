#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <target-directory>"
    return 1
fi

TARGET="$1"

mkdir -p "$TARGET"

for file in * .*; do
    if [ -f "$file" ]; then
        cp "$file" "$TARGET"
    fi
done

echo "Copied all regular files to $TARGET"
