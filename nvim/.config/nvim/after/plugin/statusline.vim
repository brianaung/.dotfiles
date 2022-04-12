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

set statusline=%t%h%m%r\ [%{LspStatus()}]%=%-14.(%l,%c%V%)\ %P
