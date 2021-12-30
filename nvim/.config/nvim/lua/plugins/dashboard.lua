local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

dashboard.section.header.val = {
    -- "                                                     ",
    -- "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    -- "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    -- "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    -- "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    -- "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    -- "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    -- "                                                     ",
    "  ╭────────╮                       ",
    "  │  Moo!  │                       ",
    "  ╰────────╯                       ",
    "         \\   ^__^                 ",
    "          \\  (oo)\\_______        ",
    "             (__)\\       )\\/\\   ",
    "                 ||----w |         ",
    "                 ||     ||         ",
}

dashboard.section.buttons.val = {
  dashboard.button( "e", "  >  New File" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "SPC f r", "  >  Open Recent"   , ":Telescope oldfiles<CR>"),
  dashboard.button( "SPC f d", "  >  Find Files", ":Telescope find_files<CR>"),
  dashboard.button( "SPC f e", "  >  Browse Folder", ":lua require'telescope'.extensions.file_browser.file_browser{}<CR>"),
  dashboard.button( "SPC l g", "  >  Live Grep", ":Telescope live_grep<CR>"),
  dashboard.button( "SPC e n", "  >  Settings" , ":lua require'telescope.builtin'.find_files{ cwd='~/.config/nvim' }<CR>"),
  dashboard.button( "q", "  >  Quit", ":qa<CR>"),
}

-- for footer quotes
local fortune = require'alpha.fortune'
dashboard.section.footer.val = fortune()

alpha.setup(dashboard.opts)

vim.cmd([[
  autocmd FileType alpha setlocal nofoldenable
  autocmd User AlphaReady set laststatus=0 | autocmd BufUnload <buffer> set laststatus=2
]])
