local o = vim.opt_local
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true

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
    '-configuration', home .. '/.libraries/jdtls/config_linux/',
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

require('jdtls').start_or_attach(config)
