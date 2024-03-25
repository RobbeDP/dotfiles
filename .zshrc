alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ls='ls --color=auto'

eval "$(starship init zsh)"

source /opt/homebrew/share/antigen/antigen.zsh

antigen bundle git

antigen apply
