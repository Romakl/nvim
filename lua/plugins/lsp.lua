-- Import lspconfig module
local lspconfig = require('lspconfig')
local util = require('lspconfig.util') -- Import lspconfig util for root patterns

-- Helper function to set up language servers with common settings
local function setup_server(server_name, config)
  lspconfig[server_name].setup(config or {})
end

-- General LSP settings
local default_on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }

  -- Enable completion triggered by <c-x><c-o>
  vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

  -- Buffer-local mappings for LSP actions
  vim.keymap.set('n', 'lD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'ld', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'lk', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'li', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set({ 'n', 'v' }, '<space>r', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<space>f', function()
    vim.lsp.buf.format { async = true }
  end, opts)
end

-- Pyright (Python) Configuration
setup_server('pyright', {
  settings = {
    pyright = {
      disableOrganizeImports = true, -- Use Ruff for import organization
    },
    python = {
      analysis = {
        ignore = { '*' }, -- Ignore all files for analysis to exclusively use Ruff
      },
    },
  },
  on_attach = default_on_attach,
})

-- TypeScript/JavaScript Configuration
setup_server('ts_ls', {
  on_attach = default_on_attach,
})

-- Rust Analyzer Configuration
setup_server('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {},
  },
  on_attach = default_on_attach,
})

-- Go (gopls) Configuration
setup_server('gopls', {
  on_attach = default_on_attach,
  capabilities = lspconfig.util.default_config.capabilities, -- Add capabilities if needed
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})

-- Ruff Linter Configuration
setup_server('ruff', {
  init_options = {
    settings = {
      args = {
        "--select=E,F,UP,N,I,ASYNC,S,PTH",
        "--line-length=79",
        "--respect-gitignore", -- Exclude files in .gitignore
        "--target-version=py311",
      },
    },
  },
  on_attach = default_on_attach,
})

-- Diagnostic Key Mappings
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- LSP Attach Autocommand
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    default_on_attach(ev.client, ev.buf)
  end,
})
