return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        renderer = {
            icons = {
                glyphs = {
                    git = { untracked = "󰎔", }
                },
            },

            indent_markers = {
                enable = true,
                inline_arrows = true,
            },
        },
    },
}
