#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "setup environment (linux)"

  sudo apt update && sudo apt upgrade -y

  # c language server (i have escaped c)
  # sudo apt-get install clangd-12 -y
  # tput reset
  # sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

  # make needed for telescope nvim
  sudo apt install build-essential

  # use nix package manager
  sh <(curl -L https://nixos.org/nix/install) --daemon

  # nix packages
  nix-env -iA \
    nixpkgs.stow \
    nixpkgs.neovim \
    # nixpkgs.zsh \
    nixpkgs.fish \
    nixpkgs.starship \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.exa \
    # nixpkgs.tmux \

  # link config files
  # stow zsh
  # stow starship
  stow nvim
  stow git
  # stow tmux
  # stow alacritty

  # zsh-autosuggestions
  # git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
  # source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

  # change shell to fish
  if grep -q fish /etc/shells; then
    echo "fish already exists"
  else
    echo "adding fish"
    echo $(which fish) | sudo tee -a /etc/shells
  fi
  chsh -s $(which fish)

  # install node
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | zsh
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm install node

  npm i -g vscode-langservers-extracted
  npm i -g typescript typescript-language-server
  # npm i -g @prisma/language-server

  # prettier lua
  # curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
  # . $HOME/.cargo/env
  # cargo install stylua

  exec sudo --login --user $USER
fi
