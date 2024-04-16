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

--- C and C++
require('lspconfig').clangd.setup({})
--- Lua
require('lspconfig').lua_ls.setup({})
--- CMake
require('lspconfig').cmake.setup({})
--- Markdown
require('lspconfig').marksman.setup({})
--- Bash
require('lspconfig').bashls.setup({})
--- Python
require('lspconfig').pylsp.setup({})
--- Dart
require('lspconfig').dartls.setup({})
--- D
require('lspconfig').serve_d.setup({})
--- OCaml
require('lspconfig').ocamllsp.setup({})
--- Rust
require('lspconfig').rust_analyzer({})
