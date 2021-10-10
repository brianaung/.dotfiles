lua require ('init')

set hidden
set encoding=utf-8
set updatetime=300

" colorscheme
set termguicolors
colorscheme zenburn
let g:airline#extensions#tabline#enabled = 1
let g:zenburn_alternate_Visual = 1

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
nnoremap <leader>fd <cmd>lua require('telescope.setup').find_files()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.setup').curr_buff()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.setup').git_files()<cr>
nnoremap <leader>fe <cmd>lua require('telescope.setup').file_browser()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.setup').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.setup').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.setup').help_tags()<cr>
nnoremap <leader>en <cmd>lua require('telescope.setup').find_nvim()<cr>

" use <tab> to trigger completion
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" confirm completion when selected with enter
if exists('*complete_info')
  inoremap <silent><expr> <c-space> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
