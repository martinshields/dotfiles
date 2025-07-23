#!/bin/bash
#This script opens only files in the chezmoi cd

declare options=("i3
bash
picom
dunst
kitty 
neovim
polybar
defaultapps
vifm
antigen
lvim
aliasmartin
functions
xresources
zsh
snippets
openconfig
quit")

# choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')
choice=$(echo -e "${options[@]}" | rofi -dmenu -i -p 'Edit config file: ' 2</dev/null)

case "$choice" in
quit)
  echo "Program terminated." && exit 1
  ;;
kitty)
  choice="$HOME/.config/kitty/kitty.conf"
  ;;
bash)
  choice="$HOME/.bashrc"
  ;;
picom)
  choice="$HOME/.config/picom.conf"
  ;;
dunst)
  choice="$HOME/.config/dunst/dunstrc"
  ;;
i3)
  choice="$HOME/.config/i3/config"
  ;;
neovim)
  choice="$HOME/.config/nvim/init.lua"
  ;;
polybar)
  choice="$HOME/.config/polybar/config.ini"
  ;;
defaultapps)
  choice="$HOME/.config/mimeapps.list"
  ;;
vifm)
  choice="$HOME/.config/vifm/vifmrc"
  ;;

aliasmartin)
  choice="$HOME/.oh-my-zsh/custom/aliasmartin.zsh"
  ;;

functions)
  choice="$HOME/.oh-my-zsh/custom/functions.zsh"
  ;;

xresources)
  choice="$HOME/.Xresources"
  ;;
zsh)
  choice="$HOME/.zshrc"
  ;;
snippets)
  choice="$HOME/snippets"
  ;;

openconfig)
  choice="$HOME/bin/openconfig.sh"
  ;;

*)
  exit 1
  ;;
esac
# chezmoi edit "$choice"
# alacritty -e nvim "$choice"
# kitty -e nvim "$choice"
#
kitty --single-instance -e nvim "$choice"
