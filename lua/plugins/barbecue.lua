return {
    -- VSCode like top bar
    "utilyre/barbecue.nvim",

    version = "*",

    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },

    opts = { attach_navic = false },
}
