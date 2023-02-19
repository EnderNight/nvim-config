require('nvim-treesitter.configs').setup {

    ensure_installed = { 'lua', 'vim', 'c', 'markdown', 'java' },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn", -- set to `false` to disable one of the mappings
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

    vim.cmd([[
        set foldmethod=expr
        set foldexpr=nvim_treesitter#foldexpr()
        set nofoldenable
    ]]),

}
