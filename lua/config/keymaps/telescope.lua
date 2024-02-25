--[[ Telescope keymaps ]]

local Utils = require('utils')
local map = Utils.keymaps.map
local builtin = require('telescope.builtin')

-- Find files
map('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]iles' })
map('n', '<leader>fg', builtin.git_files, { desc = '[f]ind [g]it files' })
