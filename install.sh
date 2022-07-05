#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then

    sudo apt-get update && sudo apt-get upgrade -y

    # build essential and tools
    sudo apt-get install curl
    sudo apt-get install build-essential manpages-dev -y
    sudo apt-get install valgrind
    sudo apt-get install xz-utils -y

    # c language server
    sudo apt-get install clangd-12
    tput reset && . ~/.bashrc
    sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

    # install and source nix
    sh <(curl -L https://nixos.org/nix/install) --no-daemon
    tput reset && . ~/.bashrc

    # install nix packages
    nix-env -iA \
        nixpkgs.neovim \
        nixpkgs.zsh \
        nixpkgs.starship \
        nixpkgs.stow \
        nixpkgs.fzf \
        nixpkgs.ripgrep \
    tput reset && . ~/.bashrc

    # create symlink for all the dotfiles using stow
    stow zsh
    stow starship
    stow nvim
    stow git
    stow tmux
    tput reset && . ~/.bashrc

    sudo chsh -s $(which zsh) $USER
    tput reset && . ~/.zshrc

    # git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    # install node using version manager
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
    tput reset && . ~/.zshrc
    nvm install node

    # install language servers for webdev
    tput reset && . ~/.zshrc
    npm i -g vscode-langservers-extracted
    npm i -g typescript typescript-language-server
    npm i -g emmet-ls
fi
