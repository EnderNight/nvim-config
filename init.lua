vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
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
			require'nvim-treesitter.configs'.setup {
				ensure_installed = "all",

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
