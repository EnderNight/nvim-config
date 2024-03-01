# nvim-config

The goal of this config (maybe distro) is to keep neovim as a text editor and give you the possibility to config/upgrade it to be an IDE.

## Plugins

- [lazy](https://github.com/folke/lazy.nvim): Plugin manager

### Code

- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim): Lsp setup helper
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Quickstart lsp configs
- [trouble](https://github.com/folke/trouble.nvim): Pretty diagnostics, references, telescope results, quickfix and location list
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Nvim treesitter config and abstraction layer
- [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects): Syntax aware text-objects, select, move, swap, and peek support

### UI

- [alpha-nvim](https://github.com/goolord/alpha-nvim): Greeter
- [barbar](https://github.com/romgrk/barbar.nvim): Tabline
- [barbecue](https://github.com/utilyre/barbecue.nvim): VSCode like winbar
- [cinnamon](https://github.com/declancm/cinnamon.nvim): Smooth scrolling
- [onedark](https://github.com/navarasu/onedark.nvim): Colorscheme
- [nvim-cursorline](https://github.com/yamatsum/nvim-cursorline): Cursor/Line highlighter
- [fidget](https://github.com/j-hui/fidget.nvim): Lsp notifications
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim): Git signs for the signcolumn
- [ident-blankline](https://github.com/lukas-reineke/indent-blankline.nvim): Indent guides
- [lualine](https://github.com/nvim-lualine/lualine.nvim): Statusline
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons): Plenty of icons
- [noice](https://github.com/folke/noice.nvim): New UI for messages, cmdline and popmenu

### Completion

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Completion plugin
- [lspkind](https://github.com/onsails/lspkind.nvim): VSCode like pictograms
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip): Snippet engine
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets): user-friendly snippets
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip): nvim-cmp snippet source
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): nvim-cmp lsp completion source
- [cmp-async-path](https://github.com/rafamadriz/friendly-snippets): nvim-cmp local path source

### Helpers

- [nvim-autopairs](https://github.com/windwp/nvim-autopairs): Insert matching pair for {, [, ), etc...
- [Comment](https://github.com/numToStr/Comment.nvim): Comment plugin
- [vim-fugitive](https://github.com/tpope/vim-fugitive): Git wrapper
- [rhubarb](https://github.com/tpope/vim-rhubarb): vim-fugitive extension for GitHub
- [nvim-lastplace](https://github.com/ethanholz/nvim-lastplace): Get back to the line you just left
- [hop](https://github.com/hadronized/hop.nvim): Jump anywhere with nearly zero keystrokes
- [neodev](https://github.com/folke/neodev.nvim): Setup for plugin/neovim devel
- [nvim-surround](https://github.com/kylechui/nvim-surround): Add/change/delete surrounding delimiter pairs with ease
- [telescope](https://github.com/nvim-telescope/telescope.nvim): Find, Filter, Preview and Pick files
- [which-key](https://github.com/folke/which-key.nvim): Keybinds helper

## File structure

#### lua/

Contains config files

#### lua/plugins/

Contains the Plugin Spec required by lazy.nvim (simply the list of installed plugins)

#### lua/config/

Contains actual vanilla and plugin configurations (cmp, lsp, lazy, ...)

#### lua/config/keymaps

Contains explicitly defined keymaps (/!\ some keymaps are defined in their related plugin spec)

#### lua/utils

Contains some utility code

## Keymaps

Thanks to which-key, you can list keymaps by typing `:WhichKey`.
