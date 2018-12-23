
echo off

if [[ -d ~/.dotfiles ]]; then
    echo ".dotfiles already exists, skipping setup"
    exit
fi

git clone --recurse-submodules git@github.com:zbigniew-malinowski/dotfiles.git ~/.dotfiles

if [[ -h ~/.zshrc ]] ; then
    echo "removing old link"
    rm ~/.zshrc
fi

if [[ -e ~/.zshrc ]] ; then
  echo "backing up old .files"
  mkdir ~/.dotfiles.old
  mv ~/.zshrc ~/.dotfiles.old/.zshrc
fi

echo "linking .files"
ln ~/.dotfiles/zshrc ~/.zshrc

if $(which zsh) ; then
  if [[ $SHELL == *"zsh"* ]]; then
    echo "zsh installed and ready to go, "
    echo "please restart the terminal"
    exit
  fi
else
  echo "installing zsh"
  brew install zsh
fi

echo "setting zsh as the default shell"
sudo echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)

echo "please restart the terminal"
