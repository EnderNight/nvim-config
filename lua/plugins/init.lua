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


    {
        "nvim-treesitter/nvim-treesitter",

        build = ":TSUpdate",
        dependencies = { "HiPhish/nvim-ts-rainbow2" },
            
        config = function()

            require("nvim-treesitter.configs").setup {
                ensure_installed = { "lua", "c", "java", "vim", "dart" },
                sync_install = false,
                auto_install = true,

                highlight = {
                    enable = true,
                },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn", -- set to `false` to disable one of the mappings
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },

                indent = {
                    enable = true
                },

                rainbow = {
                    enable = true,
                },

            },
        end,
    },



    {
        "nvim-tree/nvim-web-devicons",
        opts = {
            color_icons = true,
            default = true,
            strict = true,
        },
    }
    

    {
        "nvim-tree/nvim-tree.lua",
        config = true,
    },



    {
        "ethanholz/nvim-lastplace",
        config = true ,
    }

}
