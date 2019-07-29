DEFAULT_USER="josiah"
ZSH_BASE=$HOME/.dotfiles
source ~/.aliases
source ~/.functions

#export PATH="/usr/local/sbin:$PATH"

source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

# Terminal stuff
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z
antigen bundle git-flow-completion

# Node stuff
antigen bundle node
antigen bundle npm

# Load the theme.
antigen theme romkatv/powerlevel10k

case `uname` in
  Darwin)
    # commands for OS X go here
    antigen bundle osx

    # iTerm integration
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
  ;;
  Linux)
    # commands for Linux go here
  ;;
esac

antigen apply

source ~/.theme
