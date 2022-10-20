vim.g.loaded_matchparen = 1

local o = vim.opt

-- Cool floating window popup menu for completion on command line
o.pumblend = 17
o.wildmode = "longest:full"
o.wildoptions = "pum"

o.hidden = true
o.updatetime = 1000
o.showmode = true
o.showcmd = true
o.cmdheight = 1
o.equalalways = false
o.splitright = true
o.splitbelow = true
o.relativenumber = true
o.scrolloff = 5
o.number = true
o.cursorline = true
o.showtabline = 2
o.belloff = "all"
o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.swapfile = false
o.laststatus = 3

o.autoindent = true
o.cindent = true
o.wrap = true

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true

o.breakindent = true
o.showbreak = string.rep(" ", 3)
o.linebreak = true

o.foldmethod = "marker"
o.foldlevel = 0
o.modelines = 1

o.clipboard = "unnamedplus"

o.inccommand = "split"

o.mouse = "n"

o.list = true
vim.cmd [[ 
set listchars=tab:→\ ,eol:↲,extends:›,precedes:‹,nbsp:␣,trail:~
" set winbar=%=%m\ %f
]]
