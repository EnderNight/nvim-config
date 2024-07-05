return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                build = (function()
                    if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
                        return
                    end
                    return "make install_jsregexp"
                end)(),
                dependencies = {
                    {
                        "rafamadriz/friendly-snippets",
                        config = function()
                            require("luasnip.loaders.from_vscode").lazy_load()
                        end,
                    },
                },
            },
            "saadparwaiz1/cmp_luasnip",

            --- Official cmp sources
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-buffer",

            --- VSCode like icons
            "onsails/lspkind.nvim",
        },
        -- help: cmp
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            local lspkind = require("lspkind")
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")

            require("luasnip.loaders.from_vscode").lazy_load()

            luasnip.config.setup({})

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                completion = { completeopt = "menu,menuone,noinsert" },

                -- :help ins-completion
                mapping = cmp.mapping.preset.insert({
                    -- Scroll the documentation window [b]ack / [f]orward
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),

                    -- Accept ([y]es) the completion (auto-import, auto-expand snippets).
                    -- ['<C-y>'] = cmp.mapping.confirm { select = true },
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),

                    -- Select the [n]ext item
                    -- ['<C-n>'] = cmp.mapping.select_next_item(),
                    ["<Tab>"] = cmp.mapping.select_next_item(),

                    -- Select the [p]revious item
                    -- ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),

                    -- Manually trigger a completion from nvim-cmp (not needed but he he).
                    ["<C-Space>"] = cmp.mapping.complete({}),

                    -- <c-l> will move to the right of each of the expansion locations.
                    -- <c-h> same, but moving backwards.
                    ["<C-l>"] = cmp.mapping(function()
                        if luasnip.expand_or_locally_jumpable() then
                            luasnip.expand_or_jump()
                        end
                    end, { "i", "s" }),
                    ["<C-h>"] = cmp.mapping(function()
                        if luasnip.locally_jumpable(-1) then
                            luasnip.jump(-1)
                        end
                    end, { "i", "s" }),
                }),
                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "path" },
                    { name = "buffer" },
                },
                formatting = {
                    format = lspkind.cmp_format({}),
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
            })

            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },
}
