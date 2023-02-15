-- initial config file, meant to be changed afterwards

vim.opt.showmatch = true

vim.opt.ignorecase = true

vim.opt.mouse = "a"

vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.number = true

vim.opt.clipboard = "unnamedplus"

vim.opt.cursorline = true

vim.opt.spell = true

vim.opt.guifont = { "FiraCode_Nerd_Font", ":h10" }

if vim.g.neovide then
    require("neovide")
end
