#alias up='sudo pacman -Syu'
#test for me 
alias up='yay --noconfirm'
alias h='cd ~'
alias tl='npx torlnk'
alias vim="nvim"
alias vi="nvim"
alias ls="lsd -a"
alias v='vifm .'
alias mv="mv-iv"
alias mkdir="mkdir -vp"
alias wific="nmcli device wifi"
alias wifia="nmtui"
# Enhanced WHOIS lookups
alias dspace='ncdu'
alias cb="clipboard"
alias fan3="echo level 3 | sudo tee /proc/acpi/ibm/fan"
alias fan7="echo level 7 | sudo tee /proc/acpi/ibm/fan"
alias fanfull="echo level full-speed | sudo tee /proc/acpi/ibm/fan"
alias fanstat="cat /proc/acpi/ibm/fan"

alias yl="yadm enter lazygit"
alias yi="~/bin/pkg-install"
alias yr="~/bin/pkg-remove"

alias al="nvim ~/.oh-my-zsh/custom/aliasmartin.zsh"
alias hpd="vifm ~/.config/hypr/ ~/.local/share/omarchy/default/hypr/"
alias hpc="vifm ~/.config/hypr/"
alias discord="~/.local/share/Discord/Discord"

#batstuff

alias lsblk="lsblk | bat -l conf"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."


# 🚀 **Full System Update Function**
fullupdate() {
    echo "🚀 Starting full system update..."
    
    # 1️⃣ Update system & AUR packages
    echo "📦 Updating Pacman..."
    sudo pacman -Syu --ignore uwsm
    
    # echo "📦 Updating AUR packages with yay..."
    # yay -Syu
    
    echo "📦 Updating AUR packages with paru..."
    paru -Syu --ignore uwsm

    
    # echo "📦 Updating AUR packages with pikaur..."
    # pikaur -Syu
    #
    # echo "📦 Updating AUR packages with trizen..."
    # trizen -Syu
    #
    # echo "📦 Updating AUR packages with pacaur..."
    # pacaur -Syu
    #
    # echo "📦 Updating AUR packages with aura..."
    # aura -Ayu
    
    # 2️⃣ Remove unneeded packages
    echo "🗑️ Removing orphaned packages..."
    sudo pacman -Rns $(pacman -Qdtq)
    
    # 3️⃣ Update Pacman keyring (if needed)
    echo "🔑 Updating Pacman keyring..."
    sudo pacman-key --init
    sudo pacman-key --populate archlinux
    
    # 4️⃣ Clean package cache
    echo "🧹 Clearing old Pacman cache..."
    sudo pacman -Sc
    sudo pacman -Scc
    
    # 5️⃣ Clean temporary files & logs
    echo "🗑️ Removing old logs and temporary files..."
    sudo journalctl --vacuum-time=3d
    sudo rm -rf /var/tmp/*
    
    echo "✅ Full update completed!"
}

# Network analysis
alias myip="curl ifconfig.me"
alias ports="sudo netstat -tulpen"
alias speedtest="cloudflare-speed-cli"
# alias speedtest="speedtest-cli"
alias pingg="ping -c 5 google.com"



# 🔥 ADVANCED FUNCTIONS 🔥

# 📦 Quickly clean Pacman cache
clear_pacman_cache() {
    echo "🧹 Cleaning old Pacman packages..."
    sudo pacman -Sc
    sudo pacman -Scc
}

# 🔧 Fix Pacman
fix_pacman() {
    echo "🔧 Fixing Pacman..."
    sudo pacman-key --init
    sudo pacman-key --populate archlinux
    sudo pacman -Syy
}


# 🔧 Fix Pacman2
fix_pacman2() {
    echo "🔧 Fixing Pacman2..."
    sudo rm -rf /var/lib/pacman/sync
    sudo pacman -Syyu
}







