require("plugins")
require("disable_builtin")

-- my leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- manually specify files to load
vim.cmd [[
runtime! lua/core/options.lua
runtime! lua/core/mappings.lua
runtime! lua/plugin/*.vim
runtime! lua/plugin/*.lua
]]
