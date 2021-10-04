lua require ('init')

" display settings
syntax on
filetype plugin indent on
set number
set visualbell
" highlight Normal ctermfg=black ctermbg=lightgrey
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:gruvbox_italic=1
" set bg=dark
colorscheme nord
let g:airline#extensions#tabline#enabled = 1

" general editor setting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set backspace=indent,eol,start
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype lua setlocal ts=2 sw=2 expandtab

nnoremap <SPACE> <Nop>
let mapleader = " "

inoremap kj <Esc>
nnoremap j gj
nnoremap k gk
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>

" make Y behaves like every other Cap (why isn't it default smh)
nnoremap Y yg$

" unsets the last search pattern registered by hitting return
nnoremap <CR> :noh<CR><CR>

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

" map <CR> to autoimport
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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
