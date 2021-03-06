#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "setup environment (linux)"
  
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt-get install curl -y
  sudo apt-get install build-essential manpages-dev -y
  sudo apt-get install valgrind -y
  sudo apt-get install xz-utils -y

  # c language server
  sudo apt-get install clangd-12 -y
  tput reset
  sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

  # use nix package manager
  sh <(curl -L https://nixos.org/nix/install) --no-daemon
  . /home/$USER/.nix-profile/etc/profile.d/nix.sh

  # nix packages
  nix-env -iA \
    nixpkgs.neovim \
    nixpkgs.zsh \
    nixpkgs.starship \
    nixpkgs.stow \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.exa \
    nixpkgs.tmux \
    nixpkgs.ninja
  
  # link config files
  stow zsh
  stow starship
  #stow nvim
  stow git
  stow tmux

  # change shell to zsh
  if grep -q zsh /etc/shells; then
    echo "zsh already exists"
  else
    echo "adding zsh"
    command -v zsh | sudo tee -a /etc/shells
  fi
  chsh -s $(which zsh)

  # install node
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
  tput reset && . ~/.zshrc
  nvm install node

  nvm exec npm i -g vscode-langservers-extracted
  nvm exec npm i -g typescript typescript-language-server
  nvm exec npm i -g emmet-ls

  # prettier lua
  curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
  . $HOME/.cargo/env
  cargo install stylua

  exec sudo --login --user $USER
fi
