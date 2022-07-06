vim.opt.completeopt = { "menu", "menuone", "noselect" }

local lspkind = require "lspkind"
lspkind.init()

local ls = require "luasnip"

local cmp = require "cmp"
cmp.setup {
  snippet = {
    expand = function(args)
      ls.lsp_expand(args.body)
    end,
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = {
    ["<C-n>"] = cmp.mapping.select_next_item {
      behavior = cmp.SelectBehavior.Insert,
    },
    ["<C-p>"] = cmp.mapping.select_prev_item {
      behavior = cmp.SelectBehavior.Insert,
    },
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-y>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),

    -- ["<c-space>"] = cmp.mapping {
    --   i = cmp.mapping.complete(),
    --   c = function(
    --     _ --[[fallback]]
    --   )
    --     if cmp.visible() then
    --       if not cmp.confirm { select = true } then
    --         return
    --       end
    --     else
    --       cmp.complete()
    --     end
    --   end,
    -- },

    ["<tab>"] = cmp.config.disable,
  },

  sources = cmp.config.sources({
    { name = "luasnip" },
    { name = "nvim_lsp" },
  }, {
    { name = "buffer", keyword_length = 5 },
  }),

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[lsp]",
        luasnip = "[snip]",
      },
    },
  },

  -- new commits might break this so watch out
  experimental = {
    ghost_text = true,
  },
}
