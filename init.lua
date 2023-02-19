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

	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = true,
	},

	{
		'tpope/vim-fugitive',
		dependencies = {
			'tpope/vim-rhubarb'
		},
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

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300


-- Autocommands --
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})
