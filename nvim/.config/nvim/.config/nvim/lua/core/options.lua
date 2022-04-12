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
o.belloff = "all"
o.incsearch = true
o.showmatch = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = true

o.autoindent = true
o.cindent = true
o.wrap = true

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
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

o.formatoptions = o.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore
