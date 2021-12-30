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
  use 'wbthomason/packer.nvim' -- automanage itself

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- lsp & completion
  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind-nvim'

  -- fuzzy finder
  use 'nvim-telescope/telescope.nvim' -- core
  use 'nvim-lua/plenary.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- colorscheme
  use 'rktjmp/lush.nvim' -- colorscheme maker/editor
  use '~/.config/nvim/colors/gruvy'
  
  -- other useful tools
  use 'ellisonleao/glow.nvim' -- preview markdown with Glow inside editor

  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

  -- tests
  use 'mfussenegger/nvim-dap' -- haven't enable, will test when im free

  use 'echasnovski/mini.nvim'

  use 'goolord/alpha-nvim' -- dashboard ui

end)
