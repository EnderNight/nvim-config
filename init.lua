--[[
   ____  ___  ____ _   __(_)___ ___
  / __ \/ _ \/ __ \ | / / / __ `__ \
 / / / /  __/ /_/ / |/ / / / / / / /
/_/ /_/\___/\____/|___/_/_/ /_/ /_/

]]
--

--[[ Leader ]]
-- :help leader
-- Set space as <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--[[ netrw ]]
-- :help netrw
-- Disable netrw (repalce it with nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--- Lazy
require("config.lazy")

--- LSP -> to use with Nix
-- require('config.lsp')

-- cmp
require("config.cmp")

--- Vim Options
require("config.options")

--- Keymaps
require("config.keymaps")

--- Flutter
require("config.flutter")

-- Nvim Tree
require("config.tree")
