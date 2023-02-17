return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    require("nvim-treesitter.configs").setup {
        ensure_installed = { "lua", "c", "java", "vim", "dart" },
        sync_install = false,
        auto_install = true,

        highlight = {
            enable = true,
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

    },
}
