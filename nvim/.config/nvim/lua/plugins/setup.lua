local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself --
  use 'wbthomason/packer.nvim'
  ------------------------------
  -- telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- lsp
  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  -- use 'L3MON4D3/LuaSnip'
  -- use 'saadparwaiz1/cmp_luasnip'
  -- use 'ray-x/lsp_signature.nvim'
  -- use {'neoclide/coc.nvim', branch = 'release'}

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'terrortylor/nvim-comment'
  use 'windwp/nvim-autopairs'
  use {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
  }

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

end)
