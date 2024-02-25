--[[ Telescope keymaps ]]

local Utils = require('utils')
local map = Utils.keymaps.map
local builtin = require('telescope.builtin')

-- Find files
map('n', '<leader>tff', builtin.find_files, { desc = '[f]ind [f]iles' })
map('n', '<leader>tfg', builtin.git_files, { desc = '[f]ind [g]it files' })

-- Find in files
map('n', '<leader>tlg', builtin.live_grep, { desc = '[l]ive [g]rep' })

-- List buffers
map('n', '<leader>tlb', builtin.buffers, { desc = '[l]ist [b]uffers' })
