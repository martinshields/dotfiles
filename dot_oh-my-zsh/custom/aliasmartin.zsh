#alias up='sudo pacman -Syu'
#test for me 
alias up='paru'
alias h='cd ~'
alias ch='chezmoi cd'
alias ca='chezmoi apply'
alias iinstall='paru -S'
alias iremove='sudo paru -R'
alias gdl='github-dlr'
alias mc='sudo mc'
# alias vim="nvim"
alias mvim="NVIM_APPNAME=mvim nvim"
alias vim="NVIM_APPNAME=mvim nvim"
alias fv='"NVIM_APPNAME=mvim nvim"| $(fzf -m --preview="bat --color=always {}")'
# alias fv='NVIM_APPNAME=mvim nvim| $(fzf -m --preview="bat --color=always
# {}")'
alias sf='fzf -m --preview="bat --color=always {}" --bind "ctrl-w:become(mvim {+}),ctrl-y:execute-silent(echo {} | clip)+abort"'
alias ls="lsd -a"
alias tree="exa -T"
alias v='vifm .'
alias vw='vim ~/vimwiki/index.wiki'
alias myip='curl ifconfig.me | cowsay'
alias vers='cat /etc/os-release'
alias mv="mv-iv"
# alias cd="z"
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

