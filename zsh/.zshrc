# shell options
setopt AUTO_CD
setopt NO_CASE_GLOB

# starting directory
# cd ~

# windows title
DISABLE_AUTO_TITLE="true"
function precmd () {
    window_title="\033]0;zsh\007"
    echo -ne "$window_title"
}

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
# flying to dirs (dont walk when you can fly)
alias whome='cd /mnt/c/Users/brian'
alias proj='cd /mnt/c/Users/brian/Projects'
alias pg='cd /mnt/c/Users/brian/Playground'
alias sch='cd /mnt/c/Users/brian/School'

# starship 
eval "$(starship init zsh)"

# nvm installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# PATH="$HOME/.local/bin/:$PATH"
# export PATH="$PATH:/home/brian/.dotnet/tools"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export JDTLS_HOME="$HOME/.jdtls/"

if [ -e /home/brian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/brian/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
