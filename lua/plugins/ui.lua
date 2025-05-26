local map = vim.keymap.set

return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },

        config = function(_, opts)
            require("bufferline").setup(opts)

            map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Buffer", })
            map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer", })
            map("n", "<leader>bp", "<cmd>BufferLinePick<cr>", { desc = "Pick a Buffer", })
            map("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Pick a Buffer to Close", })
        end,
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },

        config = true,
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },

        opts = {
            -- lsp = {
            --     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            --     override = {
            --         ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            --         ["vim.lsp.util.stylize_markdown"] = true,
            --         ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
            --     },
            -- },
            presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = true,
                lsp_doc_border = false,
            },
        },
    },
}
