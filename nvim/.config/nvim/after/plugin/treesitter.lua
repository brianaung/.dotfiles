require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "typescript",
    "tsx",
    "lua",
  },

  highlight = {
    enable = true, -- false will disable the whole extension
  },

  indent = {
    enable = true,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_senection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

}
