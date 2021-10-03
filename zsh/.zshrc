# shell options
setopt AUTO_CD
setopt NO_CASE_GLOB

# tab completion
autoload -Uz compinit
compinit
zmodload -i zsh/complist
bindkey -M menuselect '^o' accept-and-infer-next-history
zstyle ':completion:*:*:*:*:*' menu select
eval "$(TERM=xterm dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# aliases
alias la='ls -a'
alias ll='ls -al'
# basic git (should rly put it in gitconfig)
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gpush='git push'
alias gpull='git pull'
# compiler and stuff
alias python='python3'
alias gccit='gcc -Wall -g -o'

# starship 
eval "$(starship init zsh)"

# nvm installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# windows title
DISABLE_AUTO_TITLE="true"
function precmd () {
    window_title="\033]0;zsh\007"
    echo -ne "$window_title"
}

# x server for wsl2
export DISPLAY="`sed -n 's/nameserver //p' /etc/resolv.conf`:0"

PATH="$HOME/.local/bin/:$PATH"
