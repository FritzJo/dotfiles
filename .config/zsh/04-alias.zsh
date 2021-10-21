alias plist="pacman -Qe | cut -d' ' -f1 | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias pclean="pacman -Rns $(pacman -Qtdq)"
alias pdepend="pd | sort -k2 -n -r"
alias vim="nvim"
alias vi="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias battery='upower -d | grep percentage | head -n 1'
alias ssh-on='sudo systemctl start sshd'
alias ssh-off='sudo systemctl stop sshd'
