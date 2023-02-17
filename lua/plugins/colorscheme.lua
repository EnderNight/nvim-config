return {
    {

        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
    
            if vim.fn.has('termguicolors') then
                vim.opt.termguicolors = true
            end

            vim.opt.background = "dark"

            vim.g.gruvbox_material_background = 'hard'
            vim.g.gruvbox_material_foreground= 'original'

            vim.g.gruvbox_material_enable_bold = 1
            vim.g.gruvbox_material_enable_italic = 1

            vim.g.gruvbox_material_cursor = "auto"

            vim.g.gruvbox_material_diagnostic_line_highlight = 1

            vim.g.gruvbox_material_diagnostic_virtual_text = "colored"

            vim.cmd([[colorscheme gruvbox-material]])
        end,

    },
}
