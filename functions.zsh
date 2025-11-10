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




function yp() {
  # Ensure we're in the home directory
  cd ~ || { echo "Failed to cd to home directory"; return 1; }

  local backup_dir="$HOME/nvimbu"
  local functions_src="$HOME/.oh-my-zsh/custom/functions.zsh"
  local alias_src="$HOME/.oh-my-zsh/custom/aliasmartin.zsh"
  local functions_dest="$HOME/functions.zsh"
  local alias_dest="$HOME/aliasmartin.zsh"

  echo "Starting dotfiles backup and sync..."

  # === Copy custom zsh files ===
  if [[ -f "$functions_src" ]]; then
    \cp --update "$functions_src" "$functions_dest" && echo "Updated $functions_dest"
  else
    echo "Warning: $functions_src not found, skipping."
  fi

  if [[ -f "$alias_src" ]]; then
    \cp --update "$alias_src" "$alias_dest" && echo "Updated $alias_dest"
  else
    echo "Warning: $alias_src not found, skipping."
  fi

  # === Backup nvim config to nvimbu (git repo) ===
  if [[ -d "$HOME/.config/nvim" ]]; then
    mkdir -p "$backup_dir"
    \cp -a "$HOME/.config/nvim/" "$backup_dir/" && echo "Backed up nvim config to $backup_dir"
  else
    echo "Warning: nvim config directory not found at ~/.config/nvim"
  fi

  # === Git push nvimbu repo ===
  if [[ -d "$backup_dir/.git" ]]; then
    echo "Pushing nvimbu git repo..."
    (
      cd "$backup_dir" || return 1
      git add -A
      git commit -m "Auto backup: $(date '+%Y-%m-%d %H:%M')" || echo "Nothing to commit in nvimbu."
      git push && echo "nvimbu repo pushed successfully."
    ) || echo "Failed to push nvimbu repo."
  else
    echo "nvimbu is not a git repository. Skipping git push."
  fi

  # === Generate package lists ===
  if command -v pacman >/dev/null 2>&1; then
    echo "Generating package lists..."
    pacman -Qqe > ~/pkglist.txt 2>/dev/null && echo "Official repo packages → pkglist.txt"
    pacman -Qqem > ~/pkglistAUR.txt 2>/dev/null && echo "AUR packages → pkglistAUR.txt"
  else
    echo "pacman not found. Skipping package list generation."
  fi

  # === YADM operations ===
  if command -v yadm >/dev/null 2>&1; then
    echo "Running yadm status..."
    yadm status

    echo "Committing and pushing dotfiles via yadm..."
    local commit_msg="Auto backup: $(date '+%Y-%m-%d %H:%M')"
    
    yadm add -u && \
    yadm commit -m "$commit_msg" && \
    yadm push && \
    echo "yadm: Successfully committed and pushed."
  else
    echo "yadm not found. Skipping version control sync."
  fi

  echo "All done! Dotfiles, packages, and nvimbu are synced and backed up."
}


# yadm
function yl() {
    cd ~
    yadm enter lazygit
    cd -
}


