require('mason-lspconfig').setup {
    ensure_installed = { "clangd", "jdtls", "lua_ls", "marksman", "pyright", "r_language_server", "vimls", "sqlls" },

    automatic_installation = true,

}
