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
  require 'kickstart.plugins',
}, {
  ui = require 'config.lazy-ui',
})
