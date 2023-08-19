#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Setting up environment (Linux)..."

  sudo apt update && sudo apt upgrade -y

  # needed for some packages
  sudo apt install build-essential

  # install nix package manager
  if ! command -v nix > /dev/null 2>&1; then
    echo "Installing Nix package manager..."
    sh <(curl -L https://nixos.org/nix/install) --daemon
  else
    echo "Nix is already installed!"
  fi
  source $HOME/.nix-profile/etc/profile.d/nix.sh

  # install required packages using nix
  nix-env -iA \
    nixpkgs.stow \
    nixpkgs.neovim \
    nixpkgs.fish \
    # nixpkgs.starship \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.exa \
    nixpkgs.tmux \

  # link config files
  # stow starship
  stow nvim
  stow git
  stow tmux
  # stow alacritty

  # change shell to fish
  if grep -q fish /etc/shells; then
    echo "Fish shell already exists!"
  else
    echo "Adding fish shell..."
    echo $(which fish) | sudo tee -a /etc/shells
  fi
  chsh -s $(which fish)

  # Install nvm (node version manager)
  if ! command -v nvm > /dev/null 2>&1; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | zsh
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  else
    echo "NVM is already installed"
  fi

  # Install node and global packages
  nvm install node
  npm i -g yarn
  npm i -g vscode-langservers-extracted
  npm i -g typescript typescript-language-server

fi
