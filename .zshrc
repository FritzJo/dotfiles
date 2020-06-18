if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec sway
fi
for file in ~/.config/zsh/*.zsh; do
    source "$file"
done
