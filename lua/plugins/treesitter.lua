return {
    'nvim-treesitter/nvim-treesitter',

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
        })

    end,

}
