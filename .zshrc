if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
    export SSH_AUTH_SOCK
    exec sway
fi
for file in ~/.config/zsh/*.zsh; do
    source "$file"
done
