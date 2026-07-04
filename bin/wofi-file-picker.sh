#!/bin/bash

search_dirs=("$HOME/Downloads/torlink/" "$HOME/adata/")

# Find only .mkv, .mp4, and .avi files (case-insensitive)
mapfile -t files < <(find "${search_dirs[@]}" -type f \( -iname "*.mkv" -o -iname "*.mp4" -o -iname "*.avi" \))

# Exit early if no files are found
if [ ${#files[@]} -eq 0 ]; then
  notify-send "No video files found in search directories"
  exit 1
fi

# Build display-to-full-path map, prefixing each entry with [foldername]
declare -A file_map
file_list=""
for file in "${files[@]}"; do
  name=$(basename "$file")
  folder=""
  for dir in "${search_dirs[@]}"; do
    if [[ "$file" == "$dir"* ]]; then
      folder=$(basename "$dir")
      break
    fi
  done
  display="[$folder] $name"
  file_map["$display"]="$file"
  file_list+="$display"$'\n'
done

# Show wofi menu
selected=$(echo "$file_list" | wofi --dmenu --prompt "Choose video:" --width 1200 --insensitive)

if [[ -n "$selected" ]]; then
  full_path="${file_map[$selected]}"
  xdg-open "$full_path"
fi
