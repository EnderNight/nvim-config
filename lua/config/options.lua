--[[ Options ]]
-- :help vim.o

--- Line numbers
vim.o.number = true
vim.o.relativenumber = true

--- Search
vim.o.ignorecase = true
vim.o.smartcase = true

--- Undo
vim.o.undofile = true

--- Tabs
vim.o.tabstop = 4 -- Number of spaces per <Tab>
vim.o.shiftwidth = 4 -- Number of spaces for each indent
vim.o.expandtab = true -- Replace tabs with spaces
vim.o.breakindent = true -- Preserve tabs for wrapped lines

--- Mouse mode
vim.o.mouse = "a"

--- Terminal colors
vim.o.termguicolors = true

--- Showmatch
vim.o.showmatch = true -- Jump to matching brace

--- Signcolumn
vim.o.signcolumn = "yes" -- Always display the signcolumn

--- Splitting
vim.o.splitright = true -- Always split to the right
vim.o.splitbelow = true -- Always split to below

--- Update time
vim.o.updatetime = 250 -- Time before swap
vim.o.timeoutlen = 300 -- Time before mapping

--- Scrolloff
vim.o.scrolloff = 10

--- Always listen for changes
vim.o.autoread = true
