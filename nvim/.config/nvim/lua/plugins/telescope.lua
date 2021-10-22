local _, telescope = pcall(require, "telescope")
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },

    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    }, 

    layout_strategy = "flex",
    layout_config = {
      horizontal = {
        width = 0.8,
        height = 0.8,
        preview_width = 0.6,
      },
      vertical = {
        height = 0.8,
        preview_height = 0.5,
      },
    },
  },
})
