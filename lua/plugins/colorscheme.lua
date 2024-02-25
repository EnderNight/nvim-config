return {
    'olimorris/onedarkpro.nvim',
    name = 'OneDark Pro',
    priority = 1000,

    config = function()
        vim.cmd("colorscheme onedark")
    end,
}
