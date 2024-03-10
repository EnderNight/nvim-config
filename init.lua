--[[
   ____  ___  ____ _   __(_)___ ___ 
  / __ \/ _ \/ __ \ | / / / __ `__ \
 / / / /  __/ /_/ / |/ / / / / / / /
/_/ /_/\___/\____/|___/_/_/ /_/ /_/ 

]]--


--[[ Leader ]]
-- :help leader
-- Set space as <leader>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


--- Lazy
require 'config.lazy'


--- LSP
require 'config.lsp'


-- cmp
require 'config.cmp'


--- Vim Options
require 'config.options'


--- Keymaps
require 'config.keymaps'


--- Flutter
require 'config.flutter'
