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


}, {})


require("mappings")
