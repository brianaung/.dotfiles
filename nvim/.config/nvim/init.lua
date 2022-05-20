require("plugins")
require("disable_builtin")

-- my leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- manually specify files to load
vim.cmd [[
runtime! lua/core/options.lua
runtime! lua/core/mappings.lua
]]

-- load colorscheme
require('kanagawa').setup({
    commentStyle = "NONE",
})
vim.cmd [[ 
set termguicolors
set bg=dark
colo kanagawa
set list
set listchars=tab:→\ ,eol:↲,extends:›,precedes:‹,nbsp:␣,trail:~
]]
