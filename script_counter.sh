#!/bin/bash

file_count=0
target_directory="/etc"

for entry in $(ls "$target_directory"); do
    if [ -f "$target_directory/$entry" ] && [ ! -L "$target_directory/$entry" ]; then
        file_count=$((file_count + 1))
    fi
done

echo "Total number of regular files in $target_directory: $file_count"
