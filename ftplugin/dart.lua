require("flutter-tools").setup {
    outline = {
        open_cmd = "60vnew", -- command to use to open the outline buffer
        auto_open = true -- if true this will open the outline automatically when it is first populated
    },
    widget_guides = {
        enabled = true,
    },
    closing_tags = {
        prefix = ">- ",
    },
    dev_log = {
        open_cmd = "10new",
    },
    dev_tools = {
        autostart = true,
        auto_open_browser = true,
    },
    lsp = {
        color = {
            enable = true,
            background = true,
        },
    },
}

require("telescope").load_extension("flutter")

vim.opt.shiftwidth = 2 -- set indentation to be 2 cells wide

-- Auto close outline view when last window --
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and string.find(vim.api.nvim_buf_get_name(0), "Flutter Outline") then
            vim.cmd "quit"
        end
    end
})


-- Mappings --
vim.keymap.set({'n', 'i', 'v',}, '<leader>ff', '<cmd>Telescope flutter commands<cr>')
