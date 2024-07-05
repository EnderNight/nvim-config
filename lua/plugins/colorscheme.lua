return {
    {
        "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local onedark = require("onedark")

            onedark.setup({
                style = "deep",

                ending_tildes = true,

                code_style = {
                    keywords = "bold",
                    functions = "bold",
                },
            })
            onedark.load()
        end,
    },
    {
        "folke/todo-comments.nvim",
        event = "VimEnter",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { signs = false },
    },
}
