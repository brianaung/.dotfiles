local _, telescope = pcall(require, "telescope")
local actions = require "telescope.actions"

telescope.setup {
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

    -- files to ignore when fuzzy finding
    file_ignore_patterns = { "node_modules" },
  },
}

-- load extensions
require("telescope").load_extension "fzf"
require("telescope").load_extension "file_browser"
require("telescope").load_extension "ui-select"

-- set keymaps
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map(
  "n",
  "<leader>fd",
  "<cmd>lua require 'telescope.builtin'.find_files{}<cr>",
  opts
)
map(
  "n",
  "<leader>en",
  "<cmd>lua require 'telescope.builtin'.find_files{ cwd='~/.config/nvim' }<cr>",
  opts
)
map(
  "n",
  "<leader>fc",
  "<cmd>lua require 'telescope.builtin'.current_buffer_fuzzy_find{}<cr>",
  opts
)
map(
  "n",
  "<leader>ft",
  "<cmd>lua require 'telescope.builtin'.git_files{}<cr>",
  opts
)
map(
  "n",
  "<leader>fe",
  "<cmd>lua require 'telescope'.extensions.file_browser.file_browser{}<cr>",
  opts
)
map(
  "n",
  "<leader>lg",
  "<cmd>lua require 'telescope.builtin'.live_grep{}<cr>",
  opts
)
map(
  "n",
  "<leader>fb",
  "<cmd>lua require 'telescope.builtin'.buffers{}<cr>",
  opts
)
map(
  "n",
  "<leader>ht",
  "<cmd>lua require 'telescope.builtin'.help_tags{}<cr>",
  opts
)
map(
  "n",
  "<leader>gs",
  "<cmd>lua require 'telescope.builtin'.git_status{}<cr>",
  opts
)
map(
  "n",
  "<leader>gc",
  "<cmd>lua require 'telescope.builtin'.git_commits{}<cr>",
  opts
)
