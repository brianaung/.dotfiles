require "plugins"
require "disable_builtin"

-- my leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd [[
runtime! lua/modules/*.lua
]]
