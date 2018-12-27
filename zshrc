ZSHA_BASE=$HOME/.dotfiles
source $ZSHA_BASE/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git

if [ "$OSTYPE"="darwin11.0" ]; then
  antigen bundle osx
fi

antigen bundle vagrant
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

antigen theme agnoster/agnoster-zsh-theme agnoster
# antigen theme eendroroy/alien alien
# antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

# disable virtual env
AGNOSTER_PROMPT_SEGMENTS[3]=
