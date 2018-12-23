rm -rf ~/.dotfiles
rm ~/.zshrc
if [[ -e ~/.dotfiles.old/.zshrc ]]; then
  mv ~/.dotfiles.old/.zshrc ~/.zshrc
fi
rm -rf ~/.dotfiles.old
rm -rf ~/.antigen
