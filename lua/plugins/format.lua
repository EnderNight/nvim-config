return {
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
        {
            "<leader>f",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "[F]ormat buffer",
        },
    },
    opts = {
        notify_on_error = true,
        format_on_save = function(bufnr)
            local disable_filetypes = {}
            return {
                timeout_ms = 500,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
            }
        end,
        formatters_by_ft = {
            lua = { "stylua" },
            -- python = { "isort", "black" }, -- run sequentialy
            python = { "black" },

            -- Run until either "prettierd" or "prettier" is found
            javascript = { "prettierd", "prettier", stop_after_first = true },
        },
    },
}
