--- [[ Default ]]

local Utils = require('utils')
local map = Utils.keymaps.map

map({ 'n', 'v' }, '<Space>', '', { silent = true }) -- Disable space

--- Navigate inside wrapped lines
map({ 'n', 'v' }, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ 'n', 'v' }, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

--- Diagnostics
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Goto previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Goto next diagnostic message' })
map('n', '[do', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

--- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    desc = 'Briefly highlight yanked text',
})
