function! LspStatus() abort
  let sl = ''
  if luaeval('not vim.tbl_isempty(vim.lsp.buf_get_clients(0))')
    let sl.='E:' .luaeval("#vim.diagnostic.get(0, { severity = { min = vim.diagnostic.severity.ERROR } })") . ', '
    let sl.='W:' .luaeval("#vim.diagnostic.get(0, { severity = { min = vim.diagnostic.severity.WARNING } })")
  else
    let sl.='lsp off'
  endif
  return sl
endfunction

set statusline=%t%h%m%r\ [%{LspStatus()}]%=%-14.(%l,%c%V%)\ %P
