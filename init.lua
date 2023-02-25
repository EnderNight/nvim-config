vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()

            if vim.fn.has('termguicolors') then
                vim.opt.termguicolors = true
            end

            vim.g.gruvbox_material_background = 'hard'
            vim.g.gruvbox_material_foreground = 'origingal'

            vim.g.gruvbox_material_enable_bold = true
            vim.g.gruvbox_material_enable_italic = true

            vim.g.gruvbox_material_sign_column_background = 'grey'
            vim.g.gruvbox_material_ui_contrast = 'high'

            vim.g.gruvbox_material_diagnostic_text_highlight = 1
            vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'

            vim.g.gruvbox_material_current_word = 'underline'

            vim.cmd([[colorscheme gruvbox-material]])
        end,
    },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = {
            'nvim-lua/plenary.nvim',
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
            },
        },
        init = function()
            require('telescope').load_extension('fzf')
        end,
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            require'nvim-treesitter.configs'.setup { ensure_installed = "all",

                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
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
                }
            }
            vim.cmd([[
        set foldmethod=expr
        set foldexpr=nvim_treesitter#foldexpr()
        set nofoldenable
        ]])
        end,
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },

    {
        'tpope/vim-fugitive',
        dependencies = {
            'tpope/vim-rhubarb'
        },
    },

    {
        'mbbill/undotree'
    },

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons',},
    },

    {
        'akinsho/flutter-tools.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        'rcarriga/nvim-notify',
    },

    {
        'numToStr/Comment.nvim',
    },

    {
        'windwp/nvim-autopairs',
    },

    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    {
        'norcalli/nvim-colorizer.lua',
    },

    {
        'folke/twilight.nvim',
    },

    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        version = "*",
    },

    {
        'ahmedkhalf/project.nvim',

    },

    { "lukas-reineke/indent-blankline.nvim" },

    {
        'folke/which-key.nvim',
    },

    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    },

    {
        'Shatur/neovim-session-manager',
    },

    {
        'akinsho/toggleterm.nvim',
    },


}, {})


require("mappings")



vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    suggest_lsp_servers = true,
})

lsp.nvim_workspace()

lsp.setup()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local cmp_config = lsp.defaults.cmp_config({
    window = {
        completion = cmp.config.window.bordered()
    }
})

cmp.setup(cmp_config)


vim.diagnostic.config({
    virtual_text = true,
})


require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})



-- Options --
vim.o.showmatch = true

vim.o.cursorline = true

vim.opt.spell = true

vim.o.hlsearch = false

vim.wo.number = true
vim.o.relativenumber = true

vim.o.mouse = 'a'

vim.o.clipboard = 'unnamedplus'

vim.o.breakindent = true
vim.opt.tabstop = 4 -- set tabs to be 8 cells wide (prevent confusion between tabs and indentation)
vim.opt.shiftwidth = 4 -- set indentation to be 4 cells wide
vim.opt.smarttab = true -- set the tab key to be used only for indentation (not inserting tab chars)
vim.opt.expandtab = true -- set typed tabs to be always replaced by spaces

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.splitbelow = true
vim.o.splitright = true


-- Autocommands --
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
            vim.cmd "quit"
        end
    end
})



-- Notifications --
vim.notify = require("notify")


require("nvim-tree").setup()

require("trouble").setup()

require("bufferline").setup()

require("lualine").setup()

require("Comment").setup()

require("nvim-autopairs").setup()

require("colorizer").setup()

require("todo-comments").setup()

require("twilight").setup()

require("project_nvim").setup()
require("telescope").load_extension('projects')


-- indent blankline options and setup --
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

require("which-key").setup()

require("toggleterm").setup()
