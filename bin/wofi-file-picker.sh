#!/bin/bash

# Set the search directory
search_dir="$HOME/adata/"

# List full paths, extract basenames, and map them back to full paths
# Then pass only basenames to wofi, and use selection to find full path
mapfile -t files < <(find "$search_dir" -type f)

# Build a list of names (basenames) and associate them with full paths
declare -A file_map
file_list=""
for file in "${files[@]}"; do
    name=$(basename "$file")
    file_map["$name"]="$file"
    file_list+="$name"$'\n'
done

# Show names only in wofi
selected=$(echo "$file_list" | wofi --dmenu --prompt "Choose file:")

# Get full path from map and do something with it
if [[ -n "$selected" ]]; then
    full_path="${file_map[$selected]}"
    xdg-open "$full_path"
fi

