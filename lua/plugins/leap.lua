return {
    "ggandor/leap.nvim",

    dependencies = {
        "tpope/vim-repeat",
    },

    config = function(_, _)
        require("leap").set_default_mappings()
    end,
}
