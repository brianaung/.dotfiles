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
stow nvim
stow starship

# add and use zsh as default shell
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER

# install node using version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
nvm install node

# install language servers for webdev
npm i -g vscode-langservers-extracted
npm i -g typescript typescript-language-server
