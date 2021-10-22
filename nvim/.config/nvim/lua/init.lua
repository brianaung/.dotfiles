-- disable unused builtin vim plugins
require "disable_builtin"

require "plugin_list"
-- load configs
require "plugins.telescope"
require "plugins.lsp"
require "plugins.completion"
require "plugins.treesitter"

-- setups
require 'nvim_comment'.setup {}
require 'transparent'.setup {
  enable = true,
}
