ANTIGEN_AUTO_CONFIG=false
ZSHA_BASE=$HOME/.dotfiles
source $ZSHA_BASE/antigen/antigen.zsh
source ~/.dotfiles/.aliases

antigen use oh-my-zsh
antigen bundle git

OS=$(uname)

if [ "$OS"="Darwin" ]; then
  antigen bundle osx
fi

antigen bundle vagrant
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle globalias
antigen bundle CorradoRossi/oh-my-zsh-atom-plugin

antigen theme agnoster/agnoster-zsh-theme agnoster
# antigen theme eendroroy/alien alien
# antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

# disable virtual env
AGNOSTER_PROMPT_SEGMENTS[3]=

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
free-port() { kill "$(lsof -t -i :$1)"; }
kill-port() { kill -kill "$(lsof -t -i :$1)"; }

export ANDROID_SDK=/opt/android_sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK
export ANDROID_NDK=/opt/android_ndk/r15c
export PATH=$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools
