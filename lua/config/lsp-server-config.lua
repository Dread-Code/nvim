local util = require 'lspconfig.util'

-- NOTE: Remember adding the LSP server into the lsp plugin at the servers list
-- This file stores custom LSP server configurations that will be merged with
-- the server configs in kickstart/plugins/lsp.lua

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
