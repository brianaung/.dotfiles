#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt-get update && sudo apt-get upgrade -y
    # build essential and tools
    sudo apt-get install build-essential manpages-dev -y
    sudo apt-get install valgrind
    sudo apt-get install xz-utils -y
    sudo apt-get install clangd-12
    sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

    # install and source nix
    sh <(curl -L https://nixos.org/nix/install) --no-daemon
    source ${HOME}/.bashrc

    # install nix packages
    nix-env -iA \
        nixpkgs.neovim \
        nixpkgs.zsh \
        nixpkgs.starship \
        nixpkgs.stow \
        nixpkgs.fzf \
        nixpkgs.ripgrep \

    # create symlink for all the dotfiles using stow
    stow zsh
    stow starship
    stow nvim
    stow git
    stow tmux

    sudo chsh -s $(which zsh) $USER

    # git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    # install node using version manager
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
    source ${HOME}/.zshrc
    nvm install node

    # install language servers for webdev
    source ${HOME}/.zshrc
    npm i -g vscode-langservers-extracted
    npm i -g typescript typescript-language-server
    npm i -g emmet-ls
fi
