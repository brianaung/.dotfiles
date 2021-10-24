local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost plugin_list.lua PackerCompile
  augroup end
]], 
  false
)

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- let packer manage itself

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-lua/plenary.nvim'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- lsp and completion
  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind-nvim'

  -- colorscheme
  use 'rktjmp/lush.nvim' -- colorscheme maker/editor
  use 'ellisonleao/gruvbox.nvim'

  -- some useful tools
  use 'ellisonleao/glow.nvim' -- preview markdown with Glow inside editor
  use {
    'terrortylor/nvim-comment',
    config = function() require('nvim_comment').setup() end
  }

end)
