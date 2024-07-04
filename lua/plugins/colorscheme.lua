return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        onedark = require("onedark")

        onedark.setup({
            style = 'deep',

            ending_tildes = true,

            code_style = {
                keywords = 'bold',
                functions = 'bold',
            },
        })
        onedark.load()
    end,
}
