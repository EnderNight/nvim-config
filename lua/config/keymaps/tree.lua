
local Utils = require('utils')

Utils.keymaps.map('n', '<leader>nt', function() vim.cmd(':NvimTreeToggle') end, { desc = "Toggle NvimTree "})
