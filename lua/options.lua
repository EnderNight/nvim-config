-- Treesitter folding --
vim.opt.foldmethod = expr
vim.opt.foldexpr = vim.fn['nvim_treesitter#foldexpr']()
vim.opt.nofoldenable = true
