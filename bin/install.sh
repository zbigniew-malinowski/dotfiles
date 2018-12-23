#!/bin/bash

if [[ -d ~/.dotfiles ]]; then
    echo ".dotfiles already exists, skipping setup"
    exit
fi

git clone https://github.com/zbigniew-malinowski/dotfiles ~/.dotfiles
cd ~/.dotfiles
git submodule add https://github.com/zsh-users/antigen.git antigen

if [[ -L ~/.zshrc ]] ; then
    echo "removing old link"
    rm ~/.zshrc
fi

if [[ -e ~/.zshrc ]] ; then
  echo "backing up old .files"
  mkdir ~/.dotfiles.old
  cp ~/.zshrc ~/.dotfiles.old/.zshrc
fi

echo "linking .files"
ln ~/.dotfiles/zshrc ~/.zshrc

echo "setting zsh as the default shell"
chsh -s $(which zsh)
