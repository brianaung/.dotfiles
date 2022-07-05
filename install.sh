#!/bin/bash

# initial update and installing packages not available (or i couldn't find/make it work) on nix
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    #neovim nightly
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install neovim
    # build essential and tools
    sudo apt-get install build-essential manpages-dev -y
    sudo apt-get install xz-utils -y
    sudo apt-get install ninja-build
    sudo apt-get install python3-venv
    sudo apt-get install sqlite3
    # install clangd lsp
    sudo apt-get install clangd-12
    sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "macos"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install llvm
fi

# install and source nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# install nix packages
nix-env -iA \
    nixpkgs.zsh \
    nixpkgs.starship \
    nixpkgs.stow \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.valgrind \
    nixpkgs.spotify-tui \

# create symlink for all the dotfiles using stow
stow zsh
stow starship
stow nvim
stow git
stow tmux

sudo chsh -s $(which zsh) $USER

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install node using version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
source ${HOME}/.zshrc
nvm install node

# install language servers for webdev
source ${HOME}/.zshrc
npm i -g vscode-langservers-extracted
npm i -g typescript typescript-language-server
npm i -g emmet-ls
