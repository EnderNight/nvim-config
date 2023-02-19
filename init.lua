-- initial config file

--- Options ---
-- Basic options
vim.opt.showmatch = true -- position cursor to the matching pair of brackets, parenthesis, etc... when typing a closing one

vim.opt.ignorecase = true -- make case insensitive searches

vim.opt.mouse = "a" -- enable mouse usage

-- tabs
vim.opt.tabstop = 8 -- set tabs to be 8 cells wide (prevent confusion between tabs and indentation)
vim.opt.shiftwidth = 4 -- set indentation to be 4 cells wide
vim.opt.smarttab = true -- set the tab key to be used only for indentation (not inserting tab chars)
vim.opt.expandtab = true -- set typed tabs to be always replaced by spaces

vim.opt.number = true -- enable numbers at the beginning of each line

vim.opt.clipboard = "unnamedplus" -- use the system clipboard

vim.opt.cursorline = true -- highlight the line your cursor is in

vim.opt.spell = true -- enable spell checking

vim.opt.signcolumn = 'auto'
--------
