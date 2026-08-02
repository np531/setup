#!/bin/bash

# Designed for APT, update this line if using different package manager
if command -v apt >/dev/null 2>&1; then
  sudo apt -y update && sudo apt -y upgrade
  sudo apt install vim-gtk3 git eza npm curl fastfetch -y
elif command -v dnf >/dev/null 2>&1; then
    sudo dnf update -y
    sudo dnf install vim-gtk3 git eza npm curl fastfetch -y
else
    echo "Not running apt or dnf, get out of here Arch scum :)"
fi



echo "=== Pulling dotfiles from repo ==="
curl https://raw.githubusercontent.com/np531/setup/main/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/np531/setup/main/.bash_aliases > ~/.bash_aliases
echo ". ~/.bash_aliases" >> ~/.bashrc

echo "=== Downloading plugins... ==="
vim +PlugInstall +qall
vim +CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright +qall
fastfetch
