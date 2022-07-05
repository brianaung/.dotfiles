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
  -- self manage installer
  use 'wbthomason/packer.nvim'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'mfussenegger/nvim-jdtls'

  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'onsails/lspkind-nvim'
  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- telescope
  use 'nvim-telescope/telescope.nvim' -- core
  use 'nvim-lua/plenary.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'

  -- colorsheme
  use 'ellisonleao/gruvbox.nvim'
  use 'sainnhe/gruvbox-material'

  -- utilities
  use 'numToStr/Comment.nvim'
  use 'ellisonleao/glow.nvim'
  use 'echasnovski/mini.nvim'

  use 'mattn/emmet-vim'

end)
