#!/bin/zsh

# shortcut to this dotfiles path is $DOTFILES
export DOTFILES="~/.dotfiles"

# your project folder that we can `c [tab]` to
export PROJECTS="~/Projects"

# load custom aliases 
[[ -f ~/.aliases ]] && source ~/.aliases

# load custom prompt 
[[ -f ~/.prompt ]] && source ~/.prompt

# load custom executable functions
[[ -f ~/.functions ]] && source ~/.functions

# your default editor
export EDITOR='vim'
export VEDITOR='code'

# your oh-my-zsh setup
export ZSH=~/.oh-my-zsh
ZSH_CUSTOM=~/.oh-my-zsh.custom
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="true"

plugins=(
  git
  colored-man-pages
  osx
  vagrant
  ssh-agent
  zsh-syntax-highlighting
  zsh-autosuggestions
  terraform
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
