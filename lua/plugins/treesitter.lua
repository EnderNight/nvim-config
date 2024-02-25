return {
    'nvim-treesitter/nvim-treesitter',

    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },

    build = ':TSUpdate',

    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
            auto_install = true,

            -- Modules
            highlight = { enable = true, },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = 'gnn',
                    node_incremental = 'grn',
                    scope_incremental = 'grc',
                    node_decremental = 'grm',
                },
            },

            indent = { enable = true, },

            -- TODO: add more keymaps
            textobjects = {
                swap = {
                    enable = true,
                    swap_next = { ['<leader>a'] = '@parameter.inner', },
                    swap_previous = { ['<leader>A'] = '@parameter.inner', },
                },
            },
        })

    end,

}
