#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "setup environment (linux)"
  
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt-get install curl
  sudo apt-get install build-essential manpages-dev -y
  sudo apt-get install valgrind
  sudo apt-get install xz-utils -y

  # c language server
  sudo apt-get install clangd-12
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
    nixpkgs.tmux
  tput reset
  
  # link config files
  stow zsh
  stow starship
  stow nvim
  stow git
  stow tmux
  tput reset

  # change shell to zsh
  if grep -q zsh /etc/shells; then
    echo "zsh already exists"
  else
    echo "adding zsh"
    command -v zsh | sudo tee -a /etc/shells
  fi
  chsh -s $(which zsh)
  tput reset

  # install node
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
  tput reset
  nvm install node

  # install node packages
  tput reset && . ~/.zshrc
  npm i -g vscode-langservers-extracted
  npm i -g typescript typescript-language-server
  npm i -g emmet-ls
fi
