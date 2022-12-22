#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "setup environment (linux)"

  sudo apt update && sudo apt upgrade -y

  # c language server (i have escaped c)
  # sudo apt-get install clangd-12 -y
  # tput reset
  # sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

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

  # link config files
  stow zsh
  stow starship
  stow nvim
  stow git
  stow tmux
  stow alacritty

  # zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

  # change shell to zsh
  if grep -q zsh /etc/shells; then
    echo "zsh already exists"
  else
    echo "adding zsh"
    command -v zsh | sudo tee -a /etc/shells
  fi
  chsh -s $(which zsh)

  # install node
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | zsh
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm install node

  npm i -g vscode-langservers-extracted
  npm i -g typescript typescript-language-server
  npm i -g @prisma/language-server

  # prettier lua
  # curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
  # . $HOME/.cargo/env
  # cargo install stylua

  exec sudo --login --user $USER
fi
