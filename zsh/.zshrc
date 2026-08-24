HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory sharehistory incappendhistory

bindkey -v

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

alias ccw="cc -Wall -Wextra -Werror"
alias vim='nvim'
alias ll='ls -lisa'
alias lg='lazygit'

eval "$(starship init zsh)"

export PATH=$PATH:/home/bolk3/.venv/bin:/home/bolk3/.cargo/bin
