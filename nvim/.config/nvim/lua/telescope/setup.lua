local previewers = require('telescope.previewers')

local new_maker = function(filepath, bufnr, opts)
  opts = opts or {}

  filepath = vim.fn.expand(filepath)
  vim.loop.fs_stat(filepath, function(_, stat)
    if not stat then return end
    if stat.size > 100000 then
      return
    else
      previewers.buffer_previewer_maker(filepath, bufnr, opts)
    end
  end)
end

local actions = require('telescope.actions')
require('telescope').setup({
  defaults = {
    buffer_previewer_maker = new_maker,

    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    }, 

    layout_strategy = "flex",
    layout_config = { 
      preview_cutoff = 20,
      width = 0.8,
      height = 0.65,
      flex = {
        flip_columns = 130,
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
