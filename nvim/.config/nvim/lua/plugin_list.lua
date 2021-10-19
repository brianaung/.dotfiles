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
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-lua/plenary.nvim'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- lsp
  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'mfussenegger/nvim-jdtls'

  use 'terrortylor/nvim-comment'
  use 'windwp/nvim-autopairs'
  use 'ellisonleao/glow.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- use 'folke/lsp-colors.nvim'
  use 'tjdevries/colorbuddy.nvim'
  use 'tjdevries/gruvbuddy.nvim'
  use 'tjdevries/express_line.nvim'
  use 'crispgm/nvim-tabline'

end)
