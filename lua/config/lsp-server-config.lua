local util = require 'lspconfig.util'

-- NOTE: Remember adding the LSP server into the lsp plugin at the servers list
vim.lsp.config('pyright', {
  cmd = { 'poetry', 'run', 'pyright-langserver', '--stdio' },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = 'standard',
        autoImportCompletions = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'workspace',
      },
    },
  },
})

vim.lsp.config('vtsls', {
  settings = {
    typescript = { preferences = { preferGoToSourceDefinition = true } },
    javascript = { preferences = { preferGoToSourceDefinition = true } },
  },
})

vim.lsp.config('tailwindcss', {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  filetypes = {
    'html',
    'css',
    'scss',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'vue',
    'heex', -- Example for Phoenix framework
  },
  root_dir = util.root_pattern('tailwind.config.js', 'tailwind.config.ts', 'package.json', 'postcss.config.js'),
})
