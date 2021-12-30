local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

dashboard.section.buttons.val = {
  dashboard.button( "e", "  >  New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "SPC f r", "  >  Recent files"   , ":Telescope oldfiles<CR>"),
  dashboard.button( "SPC f d", "  >  Find file", ":Telescope find_files<CR>"),
  dashboard.button( "SPC e n", "  >  Settings" , ":lua require'telescope.builtin'.find_files{ cwd='~/.config/nvim' }<CR>"),
  dashboard.button( "q", "  >  Quit", ":qa<CR>"),
}

-- for footer quotes
local fortune = require'alpha.fortune'
dashboard.section.footer.val = fortune()

alpha.setup(dashboard.opts)

vim.cmd([[
  autocmd FileType alpha setlocal nofoldenable
]])
