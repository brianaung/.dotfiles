# install and source nix
curl -L https://nixos.org/nix/install | sh
. ~/.nix-profile/etc/profile.d/nix.sh

# install nix packages
nix-env -iA \
	nixpkgs.zsh \
    nixpkgs.antibody \
    nixpkgs.starship \
	nixpkgs.neovim \
	nixpkgs.git \
	nixpkgs.stow \
    nixpkgs.yarn \
    nixpkgs.fzf \
    nixpkgs.ripgrep \
    nixpkgs.bat \
    nixpkgs.direnv

# create symlink for all the dotfiles using stow
stow zsh
stow nvim
stow starship

# add and use zsh as default shell
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
