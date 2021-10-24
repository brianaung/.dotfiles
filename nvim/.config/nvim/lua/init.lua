-- disable unused builtin vim plugins
require "disable_builtin"

require "plugin_list"
-- load configs
require "plugins.treesitter"
require "plugins.telescope"
require "plugins.lsp"
require "plugins.completion"

-- setups
require 'nvim_comment'.setup {}

require 'transparent'.setup {
  enable = true,
}
