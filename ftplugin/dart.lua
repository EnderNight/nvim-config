require("flutter-tools").setup {
    outline = {
        open_cmd = "30vnew", -- command to use to open the outline buffer
        auto_open = true -- if true this will open the outline automatically when it is first populated
    },
    lsp = {
        color = {
            enable = true,
            background = true,
            background_color = nil,
            foreground = false,
            virtual_text = true,
            virtual_text_str = "■",
        },
    },
}

require("telescope").load_extension("flutter")

vim.opt.shiftwidth = 2 -- set indentation to be 2 cells wide

