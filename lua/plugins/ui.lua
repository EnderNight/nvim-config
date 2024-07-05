return {
    {
        "goolord/alpha-nvim",

        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end,
    },
    {
        "romgrk/barbar.nvim",

        dependencies = {
            "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
            "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
        },

        init = function()
            vim.g.barbar_auto_setup = false
        end,

        opts = {
            animation = true,
        },
    },
    {
        "declancm/cinnamon.nvim",

        config = true,
    },
    {
        -- VSCode like top bar
        "utilyre/barbecue.nvim",

        version = "*",

        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },

        opts = { attach_navic = false },
    },
    {
        "lukas-reineke/indent-blankline.nvim",

        main = "ibl",

        config = true,
    },
    {
        "nvim-lualine/lualine.nvim",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = true,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",

        opts = {},

        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },
}
