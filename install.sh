#!/bin/bash
rm -f ~/.gitconfig
rm -f ~/.gitignore_global
rm -f ~/.zsh_aliases
rm -f ~/.zsh_functions
rm -f ~/.tmux.conf
rm -f ~/.rubocop.yml
rm -f ~/.config/flake8

rm -rf ~/dotfiles

if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

git clone https://github.com/marciomcastello/dotfiles.git ~/dotfiles

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.zsh_functions ~/.zsh_functions
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.rubocop.yml ~/.rubocop.yml
ln -s ~/dotfiles/flake8 ~/.config/flake8

source  ~/.zsh_aliases
source  ~/.zsh_functions
tmux start-server \; source-file ~/.tmux.conf
