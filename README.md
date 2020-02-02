# Dotfiles
Collection of my most important configuration files
## Content
This repository currently contains configs for:
* neovim
* sway
* waybar
* tmux
* neofetch
* zsh
* mako
* imv

## How to
Inspired by this post on [HackerNews](https://news.ycombinator.com/item?id=11070797)
### Setup
```bash
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```
### Adding files
```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .config/redshift.conf
config commit -m "Add redshift config"
config push
```

### Replication
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/FritzJo/dotfiles.git $HOME/dotfiles-tmp
rm -r ~/dotfiles-tmp/
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
