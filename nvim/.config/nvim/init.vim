set hidden
set encoding=utf-8
set updatetime=300

" colorscheme
set termguicolors
colorscheme zenburn
let g:airline#extensions#tabline#enabled = 1
let g:zenburn_alternate_Visual = 1

lua require ('init')

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
set cursorline
set scrolloff=3
set nowrap

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
nnoremap <leader>en <cmd>lua require('plugins.telescope').find_nvim()<cr>
