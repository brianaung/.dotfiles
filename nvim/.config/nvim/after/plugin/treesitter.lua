require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c",
    "cpp",
    "python",
    "html",
    "css",
    "javascript",
    "typescript",
    "lua",
    "java",
    "c_sharp",
    "markdown",
    "make",
  },

  highlight = {
    enable = true, -- false will disable the whole extension
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

  indent = {
    enable = false,
  },
}
