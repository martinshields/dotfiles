
#!/bin/bash

# Define your custom file list
file_list=(
  "$HOME/.oh-my-zsh/custom/aliasmartin.zsh"
  "$HOME/.oh-my-zsh/custom/functions.zsh"
  "$HOME/.zshrc"
  "$HOME/.bashrc"
  "$HOME/bin/wofi-file-picker.sh"
  "$HOME/bin/openconfig.sh"
)

# Join the array into newline-separated input for wofi
selected_file=$(printf "%s\n" "${file_list[@]}" | wofi --show dmenu --prompt "Open in Neovim:")

# Open in Neovim (in a terminal) if something was selected
if [[ -n "$selected_file" ]]; then
  kitty nvim "$selected_file"
fi
