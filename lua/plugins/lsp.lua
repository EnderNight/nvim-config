return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "williamboman/mason.nvim", config = true },
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        {
            "mfussenegger/nvim-lint",
            event = {
                "BufReadPre",
                "BufNewFile",
            },
            config = function()
                local lint = require("lint")

                -- lint.linters_by_ft = {
                --     cpp = { "cpplint" },
                -- }

                local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

                vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
                    group = lint_augroup,
                    callback = function()
                        lint.try_lint()
                    end,
                })
            end,
        },
        "rshkarin/mason-nvim-lint",

        { "j-hui/fidget.nvim", opts = {} },

        { "folke/neodev.nvim", opts = {} },
        {
            "folke/trouble.nvim",
            opts = {},
            cmd = "Trouble",
            keys = {
                {
                    "<leader>xx",
                    "<cmd>Trouble diagnostics toggle<cr>",
                    desc = "Diagnostics (Trouble)",
                },
                {
                    "<leader>xX",
                    "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                    desc = "Buffer Diagnostics (Trouble)",
                },
                {
                    "<leader>cs",
                    "<cmd>Trouble symbols toggle focus=false<cr>",
                    desc = "Symbols (Trouble)",
                },
                {
                    "<leader>cl",
                    "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                    desc = "LSP Definitions / references / ... (Trouble)",
                },
                {
                    "<leader>xL",
                    "<cmd>Trouble loclist toggle<cr>",
                    desc = "Location List (Trouble)",
                },
                {
                    "<leader>xQ",
                    "<cmd>Trouble qflist toggle<cr>",
                    desc = "Quickfix List (Trouble)",
                },
            },
        },
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
            callback = function(event)
                local map = function(keys, func, desc)
                    vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
                end

                --  <C-t> to jump back
                map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")

                map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")

                map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")

                map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")

                map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")

                map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

                map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

                map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

                map("K", vim.lsp.buf.hover, "Hover Documentation")

                map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

                --- Highlight word on cursor stay
                local client = vim.lsp.get_client_by_id(event.data.client_id)
                if client and client.server_capabilities.documentHighlightProvider then
                    local highlight_augroup = vim.api.nvim_create_augroup("lsp-highlight", { clear = false })
                    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
                        buffer = event.buf,
                        group = highlight_augroup,
                        callback = vim.lsp.buf.document_highlight,
                    })

                    vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
                        buffer = event.buf,
                        group = highlight_augroup,
                        callback = vim.lsp.buf.clear_references,
                    })

                    vim.api.nvim_create_autocmd("LspDetach", {
                        group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
                        callback = function(event2)
                            vim.lsp.buf.clear_references()
                            vim.api.nvim_clear_autocmds({ group = "lsp-highlight", buffer = event2.buf })
                        end,
                    })
                end

                if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
                    map("<leader>th", function()
                        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
                    end, "[T]oggle Inlay [H]ints")
                end
            end,
        })

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

        --  - cmd (table): Override the default command used to start the server
        --  - filetypes (table): Override the default list of associated filetypes for the server
        --  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
        --  - settings (table): Override the default settings passed when initializing the server.
        --        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
        local servers = {
            lua_ls = {
                -- cmd = {...},
                -- filetypes = { ...},
                -- capabilities = {},
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace",
                        },
                        -- diagnostics = { disable = { 'missing-fields' } },
                    },
                },
            },
        }

        require("mason").setup()

        local ensure_installed = vim.tbl_keys(servers or {})
        vim.list_extend(ensure_installed, {
            "stylua", -- format lua code
            "clangd", -- lsp for c/c++
            "vim-language-server", -- lsp for vimscript
        })
        require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

        require("mason-lspconfig").setup({
            handlers = {
                function(server_name)
                    local server = servers[server_name] or {}
                    server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
                    require("lspconfig")[server_name].setup(server)
                end,
            },
        })

        require("mason-nvim-lint").setup()

        require("lspconfig").ocamllsp.setup({})
    end,
}
