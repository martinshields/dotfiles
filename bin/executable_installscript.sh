#!/bin/bash
#install updates
pacman -Syu &&

	#install apps
	pacman -S zsh vifm git zoxide brave-browser &&
	pacman -Qqen <pkglistBase.txt
pacman -Qqen <pkglistAURBase.txt

#install autuin
/bin/bash -c "$(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)" &&

	#install fzf
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install &&

	#install ohmyzsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&

	#clone LazyVim starter
	git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git &&

	#clone my dots
	yadm clone https://martins35:glpat-Wzx7JHvJgvED15LpPDNyS@github.com/username/repo.git &&

	#change shell to zsh
	chsh -s "$(which zsh)" &&
	end
