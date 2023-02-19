# Nvim config files

Personal nvim config files.

## Installation

Follow packer's [installation steps](https://github.com/wbthomason/packer.nvim) and clone this repo in the `.config/nvim` folder.  
Then change your current directory to `~/.config/nvim` and do `mv nvim-config/* . && rmdir nvim-config`.  
Finally, do `nvim` then `:PackerInstall`.

## Plugins

### Core Plugins

- Plugin Manager: [Packer](https://github.com/wbthomason/packer.nvim)
- Package Manager (LSP, DAP, Linters, Formatters): [Mason](williamboman/mason.nvim)
- Completion engine: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Syntax Highlighting: [Neovim Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### LSP Servers

- Configs: [Nvim Lspconfig](neovim/nvim-lspconfig), [Mason Lspconfig](williamboman/mason-lspconfig.nvim)

#### List of preconfigured Lsp:

- jdtls (Java)
- pyright (Python)
- lua_ls (Lua)
- vimls (Vim)
- sqlls (SQL)
- marksman (Markdown)

### Completion engines

- cmp-nvim-lsp

### UI Plugins

- Colorscheme: [Gruvbox-material](https://github.com/sainnhe/gruvbox-material), [OneDark](https://github.com/navarasu/onedark.nvim)
