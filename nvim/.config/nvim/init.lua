require("plugins")
require("disable_builtin")

-- my leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- manually specify files to load
vim.cmd [[
runtime! lua/core/options.lua
runtime! lua/core/mappings.lua
runtime! lua/plugin/emmet.vim
]]

-- load colorscheme
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_disable_italic_comment = 1
vim.g.gruvbox_material_visual = 'reverse'
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_statusline_style = 'mix'
vim.cmd [[
set termguicolors
set bg=dark
colo gruvbox-material
]]
