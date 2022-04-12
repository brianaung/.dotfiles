require("plugins")
require("disable_builtin")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.snippets = "luasnip"

vim.cmd [[
runtime! lua/core/options.lua
runtime! lua/core/mappings.lua
]]

--vim.cmd [[ colorscheme kanagawa ]]
