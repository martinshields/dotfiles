#!/bin/bash
cava -p ~/.config/cava/waybar.ini | while IFS= read -r line; do
    output=""
    IFS=';' read -ra values <<< "$line"
    for val in "${values[@]}"; do
        case $val in
            0) output+=" " ;;
            1) output+="▁" ;;
            2) output+="▂" ;;
            3) output+="▃" ;;
            4) output+="▄" ;;
            5) output+="▅" ;;
            6) output+="▆" ;;
            7) output+="▇" ;;
            8) output+="█" ;;
        esac
    done
    echo "$output"
done
