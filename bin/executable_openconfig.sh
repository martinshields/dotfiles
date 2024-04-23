#!/bin/bash

declare options=("i3
bash
picom
dunst
alacritty
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

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
quit)
	echo "Program terminated." && exit 1
	;;

alacritty)
	choice="$HOME/.config/alacritty/alacritty.yml"
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
	choice="$HOME/.i3/config"
	;;
neovim)
	choice="$HOME/.config/nvim/init.lua"
	;;
lvim)
	choice="$HOME/.config/lvim/config.lua"
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

antigen)
	choice="$HOME/.antigenrc"
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
chezmoi edit "$choice"
# alacritty -e nvim "$choice"
