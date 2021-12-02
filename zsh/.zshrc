# use nix installer
if [ -e /home/brian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/brian/.nix-profile/etc/profile.d/nix.sh; fi 

# use starship prompt
eval "$(starship init zsh)"

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
alias python='python3'
alias gccit='gcc -Wall -g -o'
alias whome='cd /mnt/c/Users/brian'
alias proj='cd /mnt/c/Users/brian/Projects'
alias pg='cd /mnt/c/Users/brian/Playground'
alias sch='cd /mnt/c/Users/brian/School'

# nvm installation
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# PATH="$HOME/.local/bin/:$PATH"
# export PATH="$PATH:/home/brian/.dotnet/tools"
# export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# export JDTLS_HOME="$HOME/.jdtls/"
