require('Comment').setup()

require('luasnip.loaders.from_vscode').lazy_load()

require('mini.tabline').setup({ 
  show_icons = false, 
  set_vim_settings = true 
})

