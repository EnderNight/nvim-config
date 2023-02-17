-- initial config file


----- Lazy -----
--- Installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then 
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", --latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

--- Starting
require("lazy").setup("plugins")
----------




--- Options ---
require("options")

--- Neovide ---
if vim.g.neovide then
    require("neovide")
end
