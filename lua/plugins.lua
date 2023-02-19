
return require('packer').startup(function(use)

    use {
        'wbthomason/packer.nvim',

        { 'sainnhe/gruvbox-material', config = function() require('colorscheme') end },
        { 'navarasu/onedark.nvim', config = function() require('colorscheme') end },

        { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = function() require('treesitter') end },

        { 'williamboman/mason.nvim', config = function() require('mason-config') end },
        { 'williamboman/mason-lspconfig.nvim', config = function() require('mason-lsp-configs') end },

        { 'neovim/nvim-lspconfig' },

        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',

        'SirVer/ultisnips',
        'quangnguyen30192/cmp-nvim-ultisnips',

        { 'hrsh7th/nvim-cmp', config = function() require('nvim-cmp-config') end },

}


end)
