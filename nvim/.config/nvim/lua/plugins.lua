local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- More
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'yggdroot/indentline'
  use 'vim-airline/vim-airline'
  use 'morhetz/gruvbox'
  use 'arcticicestudio/nord-vim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

end)
