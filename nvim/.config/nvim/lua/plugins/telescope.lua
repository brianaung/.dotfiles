local present, telescope = pcall(require, "telescope")
if not present then
  return
end

local actions = require('telescope.actions')
require('telescope').setup({
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

require('telescope').load_extension('fzf')

local mappings = {}
-- uncomment and add arguments if needed
mappings.find_files = function()
  require('telescope.builtin').find_files() 
end

mappings.curr_buff = function()
  require('telescope.builtin').current_buffer_fuzzy_find() 
end

mappings.git_files = function()
  require('telescope.builtin').git_files()
end

mappings.file_browser = function()
  require('telescope.builtin').file_browser()
end

mappings.live_grep = function()
  require('telescope.builtin').live_grep()
end

mappings.buffers = function()
  require('telescope.builtin').buffers()
end

mappings.help_tags = function()
  require('telescope.builtin').help_tags()
end

mappings.find_nvim = function()
  require('telescope.builtin').find_files({cwd="~/.config/nvim"}) 
end

return mappings
