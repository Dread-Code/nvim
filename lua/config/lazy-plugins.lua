-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
-- NOTE: If you want to check how to add more plugins look the README.MD or check the comments in the plugins in the kickstart
require('lazy').setup({
  require 'kickstart.plugins.guess-indent',
  require 'kickstart.plugins.wich-key',
  require 'kickstart.plugins.telescope',
  -- LSP Plugins
  require 'kickstart.plugins.lazydev',
  require 'kickstart.plugins.lsp',
  --
  require 'kickstart.plugins.autoformat',
  require 'kickstart.plugins.autocompletion',
  require 'kickstart.plugins.themes',
  require 'kickstart.plugins.todo-comments',
  require 'kickstart.plugins.mini',
  require 'kickstart.plugins.treesitter',
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',
  -- See `:help gitsigns` to understand what the configuration keys do
  require 'kickstart.plugins.gitsigns',
}, {
  ui = require 'config.lazy-ui',
})
