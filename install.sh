#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Setting up environment (Linux)..."

  sudo apt update && sudo apt upgrade -y

  # needed for some packages
  sudo apt install build-essential -y

  # change shell to fish
  sudo apt-get install fish -y
  if grep -q fish /etc/shells; then
    echo "Fish shell already exists!"
  else
    echo "Adding fish shell..."
    echo $(which fish) | sudo tee -a /etc/shells
  fi
  chsh -s $(which fish)
  
########################################################################

  # install nix package manager
  if ! command -v nix > /dev/null 2>&1; then
    echo "Installing Nix package manager..."
    # sh <(curl -L https://nixos.org/nix/install) --no-daemon
    curl -L https://nixos.org/nix/install | sh -s -- --no-daemon
    . $HOME/.nix-profile/etc/profile.d/nix.fish
  else
    echo "Nix is already installed!"
  fi

  # install required packages using nix
  nix-env -iA \
    nixpkgs.stow \
    nixpkgs.neovim \
    nixpkgs.starship \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.exa \
    nixpkgs.tmux

  # link config files
  stow starship
  stow nvim
  stow git
  stow tmux

  curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
  fisher install jorgebucaran/nvm.fish

  # Install node and global packages
  nvm install latest
  npm i -g yarn
  npm i -g vscode-langservers-extracted
  npm i -g typescript typescript-language-server

fi
