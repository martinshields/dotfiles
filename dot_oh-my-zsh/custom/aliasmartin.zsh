#alias up='sudo pacman -Syu'
#test for me 
alias up='paru'
#alias up="cd ~/Dropbox/myscripts && ./update1.sh"
##alias up="./update1.sh"
##alias upgradefc='sudo apt update; sudo apt upgrade; sudo apt dist-upgrade; sudo apt autoremove; sudo apt autoclean'
##alias upgradefc="cd ~/Dropbox/myscripts && ./update1.sh"
alias iinstall='paru -S'
alias iremove='sudo paru -R'
alias mc='sudo mc'
alias fdv='nvim $(fzf --preview='cat {}')'
# alias status='./status.sh'
#alias backup="cd ~/Dropbox/myscripts && ./myBUfile.sh"
alias vim="nvim"
# alias ls='lsd -l'
alias ls="lsd -a"
alias tree="exa -T"
alias v='vifm .'
alias vw='vim ~/vimwiki/index.wiki'
alias myip='curl ifconfig.me | cowsay'
alias vers='cat /etc/os-release'
# alias blender="devour.sh blender"
# alias fdv='fd --type f --hidden --exclude .git | fzf | xargs lvim'
alias mv="mv-iv"
alias cd="z"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
# alias cat="bat"
alias dmenu='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
alias wific="nmcli device wifi"
alias wifia="nmtui"
alias bt="bluetuith"
# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"
alias ports='sudo netstat -vatnp'
alias dspace='ncdu'
alias cb="clipboard"

