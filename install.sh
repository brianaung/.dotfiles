# initial update and installing packages not available (or i couldn't find/make it work) on nix
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install build-essential manpages-dev
    sudo apt install valgrind
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macos
fi

# install and source nix
curl -L https://nixos.org/nix/install | sh
. ~/.nix-profile/etc/profile.d/nix.sh

# install nix packages
nix-env -iA \
    nixpkgs.zsh \
    nixpkgs.starship \
    nixpkgs.neovim \
    nixpkgs.git \
    nixpkgs.stow \
    nixpkgs.yarn \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.bat \
    nixpkgs.direnv \
    nixpkgs.gnumake \
    nixpkgs.gcc \
    nixpkgs.valgrind \
    nixpkgs.python3Full \
    nixpkgs.jdk

# create symlink for all the dotfiles using stow
stow zsh
stow starship
stow nvim
stow git

# add and use zsh as default shell
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER

# install node using version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
source ${HOME}/.zshrc
nvm install node

# install language servers for webdev
npm i -g vscode-langservers-extracted
npm i -g typescript typescript-language-server
