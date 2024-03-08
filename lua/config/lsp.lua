local lsp_zero = require('lsp-zero')
local navic = require('nvim-navic')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
    })

    if client.server_capabilities["documentSymbolProvider"] then
        navic.attach(client, bufnr)
    end
end)

require('lspconfig').clangd.setup({})
require('lspconfig').lua_ls.setup({})
require('lspconfig').cmake.setup({})
require('lspconfig').marksman.setup({})
require('lspconfig').bashls.setup({})
require('lspconfig').pylsp.setup({})
require('lspconfig').dartls.setup({})
