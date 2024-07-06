return {
    {
        "numToStr/Comment.nvim",
        opts = {},
    },
    {
        "hadronized/hop.nvim",
        config = true,
    },
    {
        "ethanholz/nvim-lastplace",

        config = true,
    },
    {
        "alexghergh/nvim-tmux-navigation",

        opts = {
            disable_when_zoomed = true,
            keybindings = {
                left = "<C-h>",
                down = "<C-j>",
                up = "<C-k>",
                right = "<C-l>",
                last_active = "<C-\\>",
                next = "<C-Space>",
            },
        },
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end,
    },
}
