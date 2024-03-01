return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',

        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
        },

        config = true,
    },

    {
        'folke/trouble.nvim',

        config = true,
    },

    {
        'kosayoda/nvim-lightbulb',
        opts = {
            autocmd = {
                enabled = true
            },
        },
    },

    {
        "roobert/action-hints.nvim",

        opts = {

            template = {
                definition = { text = " ⊛", color = "#add8e6", },
                references = { text = " ↱%s", color = "#ff6666", },
            },

            use_virtual_text = true,

        },
    },

    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",

        config = true,
    },

    {
        "smjonas/inc-rename.nvim",
        config = true,
    },
}
