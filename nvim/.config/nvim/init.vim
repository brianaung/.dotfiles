lua require ('init')

set hidden
set encoding=utf-8
set updatetime=250

set termguicolors
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
" make bg transparent
autocmd ColorScheme * hi Normal guibg=none

set showmode
set showcmd
set cmdheight=1
set noequalalways
set splitbelow
set splitright
set mouse=n
set nu rnu
set cursorline
set scrolloff=5
set ignorecase
set smartcase
set hlsearch

set autoindent
set cindent
set wrap

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" smarter line breaking when wrapping
set breakindent
set showbreak=\ \ \ 
set linebreak

" show hidden chars by calling :set list
set listchars=tab:→\ ,eol:↲,extends:›,precedes:‹,nbsp:␣,trail:~

" i will properly comment these options later, for now read :h fo-table
set formatoptions-=ato2
set formatoptions+=cqrnj

nnoremap <SPACE> <Nop>
let mapleader = " "

inoremap kj <Esc>
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nnoremap Y yg$
nnoremap <CR> :nohl<CR><CR>

" telescope mappings
nnoremap <leader>fd <cmd>lua require'telescope.builtin'.find_files{}<cr>
nnoremap <leader>fn <cmd>lua require'telescope.builtin'.find_files{ cwd="~/.config/nvim" }<cr>
nnoremap <leader>fc <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<cr>
nnoremap <leader>ft <cmd>lua require'telescope.builtin'.git_files{}<cr>
nnoremap <leader>fe <cmd>lua require'telescope.builtin'.file_browser{}<cr>
nnoremap <leader>lg <cmd>lua require'telescope.builtin'.live_grep{}<cr>
nnoremap <leader>b <cmd>lua require'telescope.builtin'.buffers{}<cr>
nnoremap <leader>ht <cmd>lua require'telescope.builtin'.help_tags{}<cr>
nnoremap <leader>gs <cmd>lua require'telescope.builtin'.git_status{}<cr>
nnoremap <leader>gc <cmd>lua require'telescope.builtin'.git_commits{}<cr>

" statusline
function! LspStatus() abort
    let sl = ''
    if luaeval('not vim.tbl_isempty(vim.lsp.buf_get_clients(0))')
        let sl.='E:' .luaeval("vim.lsp.diagnostic.get_count(0, [[Error]])") . ', '
        let sl.='W:' .luaeval("vim.lsp.diagnostic.get_count(0, [[Warning]])")
    else
        let sl.='lsp off'
    endif
    return sl
endfunction

set statusline=%f%R%m%=%l,%c%V\ \ \ \ %{LspStatus()}%y
