lua require ('init')

set hidden
set encoding=utf-8
set updatetime=250

set termguicolors
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set backspace=indent,eol,start

set ignorecase
set smartcase
set nu rnu
set mouse=a
set scrolloff=2
set noshowmode
set cursorline

" file specific tab width
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype lua setlocal ts=2 sw=2 expandtab
autocmd Filetype markdown setlocal ts=2 sw=2 expandtab

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
nnoremap <leader>fd <cmd>lua require('plugins.telescope').find_files()<cr>
nnoremap <leader>fc <cmd>lua require('plugins.telescope').curr_buff()<cr>
nnoremap <leader>ft <cmd>lua require('plugins.telescope').git_files()<cr>
nnoremap <leader>fe <cmd>lua require('plugins.telescope').file_browser()<cr>
nnoremap <leader>fg <cmd>lua require('plugins.telescope').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('plugins.telescope').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('plugins.telescope').help_tags()<cr>
nnoremap <leader>fn <cmd>lua require('plugins.telescope').find_nvim()<cr>

" statusline
function! LspStatus() abort
    let sl = ''
    if luaeval('not vim.tbl_isempty(vim.lsp.buf_get_clients(0))')
        let sl.='E:' .luaeval("vim.lsp.diagnostic.get_count(0, [[Error]])") . ', '
        let sl.='W:' .luaeval("vim.lsp.diagnostic.get_count(0, [[Warning]])")
    else
        let sl.='Lsp off'
    endif
    return sl
endfunction

let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}

hi User1 guifg=#282C34 guibg=#f8fe7a
set statusline=%1*\ %{toupper(g:currentmode[mode()])}%*\ %f\ %m%=%{LspStatus()}\ %y[%02l:%02v,%p%%]\ 
"                               |                  |   |         |         |  |  |  |
"                               |                  |   |         |         |  |  |  +- percentage
"                               |                  |   |         |         |  |  +- column number  
"                               |                  |   |         |         |  +- line number    
"                               |                  |   |         |         +- file type     
"                               |                  |   |         +- lsp diagnostic message               
"                               |                  |   +- modified flag                       
"                               |                  +- file path                           
"                               +- current mode
