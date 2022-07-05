# use nix installer
if [ -e /home/brian/.nix-profile/etc/profile.d/nix.sh ]; then . /home/brian/.nix-profile/etc/profile.d/nix.sh; fi 

# if tmux is executable and not inside a tmux session, then try to attach.
# if attachment fails, start a new session
[ -x "$(command -v tmux)" ] \
  && [ -z "${TMUX}" ] \
  && { tmux attach || tmux; } >/dev/null 2>&1

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

# autosuggestions like fish
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^y' autosuggest-accept

# aliases
# use exa for prettier ls outputs
alias ls='exa --classify'
alias la='exa --all --classify'
alias ll='exa --long --all --classify'

alias open='explorer.exe'

alias python='python3'

# flying around dirs
alias whome='cd /mnt/c/Users/brian'
alias proj='cd /mnt/c/MyDocs/Projects'
alias pg='cd /mnt/c/MyDocs/Playground'
alias sch='cd /mnt/c/MyDocs/School'

# nvm installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

alias luamake=/home/brian/lua-language-server/3rd/luamake/luamake

export PATH="$HOME/.libraries/lua-language-server/bin/Linux:$PATH"
