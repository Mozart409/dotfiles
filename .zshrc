export ZSH="/Users/amadeus/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(yarn zsh-autosuggestions yarn-completion)

source $ZSH/oh-my-zsh.sh

alias zs="source ~/.zshrc"

alias fix="git diff --name-only | uniq | xargs code"

COMPLETION_WAITING_DOTS="true"

eval "$(fnm env)"
