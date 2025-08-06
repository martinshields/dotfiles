
#!/bin/bash

search_dir="$HOME/adata/"

# Find only .mkv, .mp4, and .avi files (case-insensitive)
mapfile -t files < <(find "$search_dir" -type f \( -iname "*.mkv" -o -iname "*.mp4" -o -iname "*.avi" \))

# Exit early if no files are found
if [ ${#files[@]} -eq 0 ]; then
    notify-send "No video files found in $search_dir"
    exit 1
fi

# Build basename-to-full-path map
declare -A file_map
file_list=""
for file in "${files[@]}"; do
    name=$(basename "$file")
    file_map["$name"]="$file"
    file_list+="$name"$'\n'
done

# Show wofi menu with wider window and larger text
selected=$(echo "$file_list" | wofi --dmenu --prompt "Choose video:" --width 1200 --font "monospace 32" --insensitive)

if [[ -n "$selected" ]]; then
    full_path="${file_map[$selected]}"
    xdg-open "$full_path"
fi
