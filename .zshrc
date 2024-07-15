alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ls='ls --color=auto'

eval "$(starship init zsh)"

source /opt/homebrew/share/antigen/antigen.zsh

antigen bundle aws
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/robbedeproft/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
