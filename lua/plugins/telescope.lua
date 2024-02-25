return {
    'nvim-telescope/telescope.nvim',
    name = 'Telescope',

    tag = '0.1.5',

    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        { 
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        },
    },

    opts = {
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
            },
        },

    },
}
