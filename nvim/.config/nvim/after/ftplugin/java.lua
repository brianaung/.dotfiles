local o = vim.opt_local
-- o.shiftwidth = 2
-- o.tabstop = 2
-- o.softtabstop = 2
-- o.expandtab = true

-- jdtls setup
local home = os.getenv('HOME')
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = home .. '/.workspace/' .. project_name

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local config = {
  cmd = {

    'java', -- change this if u wanna use specific version

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    -- Prerequisites:
    -- install and move jdtls folder to this dir -> $HOME/.libraries/...
    -- create workspace folder in -> $HOME/.workspace
    '-jar', home .. '/.libraries/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', home .. '/.libraries/jdtls/config_linux',
    '-data', workspace_dir,
  },

  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

  capabilities = capabilities,

  settings = {
    java = {
    }
  },

  init_options = {
    bundles = {}
  },
}
-- require('jdtls').start_or_attach(config)

-- keybinds from lspconfig
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', '<leader>sh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<leader>se', '<cmd>lua vim.lsp.diagnostic.open_float()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]

-- extra capabilities provided by nvim-jdtls
map("n", "<leader>oi", "<cmd>lua require'jdtls'.organize_imports()<CR>", opts)
map("n", "crv", "<Esc><cmd>lua require'jdtls'.extract_variable(true)<CR>", opts)
map("n", "crc", "<Esc><cmd>lua require'jdtls'.extract_constant(true)<CR>", opts)
map("n", "crm", "<Esc><cmd>lua require'jdtls'.extract_method(true)<CR>", opts)
