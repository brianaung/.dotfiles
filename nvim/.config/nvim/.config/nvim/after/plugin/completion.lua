vim.opt.completeopt = { "menu", "menuone", "noselect" }

local lspkind = require "lspkind"
lspkind.init()

local luasnip = require "luasnip"

local cmp = require "cmp"
cmp.setup {
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-y>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ['<C-Space>'] = cmp.mapping.complete(),
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' , keyword_length = 5 },
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end, 
  },

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
