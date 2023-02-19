if vim.fn.has('termguicolors') then
    vim.opt.termguicolors = true
end

--- Gruvbox mlaterial
-- vim.g.gruvbox_material_background = 'hard'
-- vim.g.gruvbox_material_foreground = 'original'
-- vim.g.gruvbox_material_ui_contrast = 'high'
-- 
-- vim.g.gruvbox_material_enable_bold = 1
-- vim.g.gruvbox_material_enable_italic = 1
-- 
-- vim.g.gruvbox_material_cursor = 'auto'
-- 
-- vim.g.gruvbox_material_sign_column_background = 'grey'
-- 
-- vim.g.gruvbox_material_diagnostic_text_highlight = 1
-- vim.g.gruvbox_material_diagnostic_virtual_text = 1
-- 
-- vim.g.gruvbox_material_better_performance = 1
-- 
-- vim.cmd([[colorscheme gruvbox-material]])

-- OneDark
require('onedark').setup {
    style = 'warmer',
    term_colors = true,
    
    code_style = {
        keywords = 'italic,bold',
        functions = 'bold',
    },

    diagnostics = {
        background = false,
    },
}
require('onedark').load()
