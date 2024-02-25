--[[ Telescope keymaps ]]

local Utils = require('utils')
local builtin = require('telescope.builtin')
local wk = require('which-key')

wk.register({
    t = {
        name = 'Telescope',

        f = {
            name = 'Find files',
            f = { builtin.find_files, 'Find files', },
            g = { builtin.git_files, 'Find git files', },
        },

        lg = { builtin.live_grep, 'Live grep', },

        lb = { builtin.buffers, 'List buffers', },

        ts = { builtin.treesitter, 'Show Treesitter', },
    },
}, { prefix = '<leader>', })
