--[[ Options ]]
-- :help vim.opt
--
--- Nerd Fonts
vim.g.have_nerd_font = true

--- Line number
vim.opt.number = true
vim.opt.relativenumber = true

--- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

--- Undo
vim.opt.undofile = true

--- Tabs
-- vim.opt.tabstop = 4 -- Number of spaces per <Tab>
-- vim.opt.shiftwidth = 4 -- Number of spaces for each indent
vim.opt.expandtab = true -- Replace tabs with spaces
vim.opt.breakindent = true -- Preserve tabs for wrapped lines

--- Mouse mode
vim.opt.mouse = "a"

--- Terminal colors
vim.opt.termguicolors = true

--- Showmatch
vim.opt.showmatch = true -- Jump to matching brace

--- Signcolumn
vim.opt.signcolumn = "yes" -- Always display the signcolumn

--- Splitting
vim.opt.splitright = true -- Always split to the right
vim.opt.splitbelow = true -- Always split below

--- Update time
vim.opt.updatetime = 250 -- Time before swap
vim.opt.timeoutlen = 300 -- Time before mapping

--- Scrolloff
vim.opt.scrolloff = 10

--- Always listen for changes
vim.opt.autoread = true


--- Don't show mode
vim.opt.showmode = false

--- Clipboard
vim.opt.clipboard = 'unnamedplus'

--- Space display
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions
vim.opt.inccommand = 'split'

--- Cursorline
vim.opt.cursorline = true
