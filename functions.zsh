# function unzip()      # Handy ExVtract Program
# {
#     if [ -f $1 ] ; then
#
#             *.tar.gz)    tar xvzf $1     ;;
#             *.bz2)       bunzip2 $1      ;;
#             *.rar)       unrar x $1      ;;
#             *.gz)        gunzip $1       ;;
#             *.tar)       tar xvf $1      ;;
#             *.tbz2)      tar xvjf $1     ;;
#             *.tgz)       tar xvzf $1     ;;
#             *.zip)       unzip $1        ;;
#             *.Z)         uncompress $1   ;;
#             *.7z)        7z x $1         ;;
#             *.xz)        tar xvf $1      ;;
#             *)           echo "'$1' cannot be extracted via >extract<" ;;
#         esac
#     else
#         echo "'$1' is not a valid file!"
#     fi
# }
#
 command_not_found_handler() {
      # Find which package contains the file with the path /usr/bin/COMMAND
      package_name=$(pacman -Fq "/usr/bin/$1" | head)

      # If no package is found output the error message which ZSH shows by default
      [[ -z "$package_name" ]] && echo "zsh: command not found: $1" && exit 1

      # Notify user and ask whether or not they want to install the package
      echo -e "Command '\e[1m$1\e[0m' not found, but was found in the '\e[1m$package_name\e[0m' package."
      echo -n "Would you like to install it? [Y/n] "
      read -k confirm
      echo "\n"

      [[ "$confirm" == [yY] ]] && sudo pacman -S "$package_name"
  }


# yi() {
# 	SELECTED_PKGS="$(paru -Slq | fzf --header='Install packages' -m --height 100% --preview 'yay -Si {1}')"
# 	if [ -n "$SELECTED_PKGS" ]; then
# 		yay -S $(echo $SELECTED_PKGS)
# 	fi
# }
#
# # Search and remove packages with yay and fzf
# yr() {
# 	SELECTED_PKGS="$(paru -Qsq | fzf --header='Remove packages' -m --height 100% --preview 'yay -Si {1}')"
# 	if [ -n "$SELECTED_PKGS" ]; then
# 		yay -Rns $(echo $SELECTED_PKGS)
# 	fi
# }
#
# cd() {
#     # requires fd and fzf
#     if [[ $# -eq 0 ]]; then
#        # reproduce the behavior of `cd` with no arguments
#        builtin cd
#     elif [[ -d "$1" ]]; then
#        # if the folder exists, go there
#        builtin cd "$1" || exit
#     else
#        # finally, look for alternatives with fzf based on user input
#        builtin cd "$( fd --type directory | \
#        fzf +m --preview-window=right:60%:wrap --preview 'tree -C {} | head -200' \
#        --query "$1" )" || exit
#     fi
# }
function yp() {
  cd ~

  # Use \cp to bypass aliases (like cp -i)
  \cp --update ~/.oh-my-zsh/custom/functions.zsh ~/functions.zsh
  \cp --update ~/.oh-my-zsh/custom/aliasmartin.zsh ~/aliasmartin.zsh

  # Fix: Use \cp and -a (better than -R for configs)
  \cp -a ~/.config/nvim/ ~/nvimbu/

  echo "Copying over functions.zsh and aliasmartin.zsh to ~ ."
  sleep 1

  echo "Running pkglist and pkglistAUR..."
  pacman -Qqe > ~/pkglist.txt && 
  pacman -Qqem > ~/pkglistAUR.txt && 
  echo "pkglist and pkglistAUR are backed up."

  sleep 1

  echo "Running yadm status..."
  yadm status

  echo "Committing and pushing with yadm..."
  yadm add -u
  yadm commit -m "Auto backup: $(date '+%Y-%m-%d %H:%M')"
  yadm push

  echo "All done! Your dotfiles are synced."
}





# yadm
function yl() {
    cd ~
    yadm enter lazygit
    cd -
}


