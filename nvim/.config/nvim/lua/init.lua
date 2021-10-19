-- disable unused builtin vim plugins
require "disable_builtin"

require "plugin_list"
-- load configs
require "plugins.telescope"
require "plugins.lsp"
require "plugins.treesitter"
require "plugins.autopairs"
require "plugins.statusline"
require 'nvim_comment'.setup {}
require 'colorizer'.setup {
  'css',
  'javascript',
  html = {
    'foreground',
  }
}
