local map = vim.api.nvim_set_keymap

-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true, desc = "Go to previous buffer" })
map("n", "<A-.>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "Go to next buffer" })

-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", { noremap = true, silent = true, desc = "Move to previous buffer" })
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", { noremap = true, silent = true, desc = "Move to next buffer" })
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { noremap = true, silent = true, desc = "Go to buffer 1" })
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { noremap = true, silent = true, desc = "Go to buffer 2" })
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { noremap = true, silent = true, desc = "Go to buffer 3" })
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { noremap = true, silent = true, desc = "Go to buffer 4" })
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { noremap = true, silent = true, desc = "Go to buffer 5" })
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { noremap = true, silent = true, desc = "Go to buffer 6" })
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { noremap = true, silent = true, desc = "Go to buffer 7" })
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { noremap = true, silent = true, desc = "Go to buffer 8" })
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { noremap = true, silent = true, desc = "Go to buffer 9" })
map("n", "<A-0>", "<Cmd>BufferLast<CR>", { noremap = true, silent = true, desc = "Go to last buffer" })
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", { noremap = true, silent = true, desc = "Pin/Unpin current buffer" })
-- Close buffer
map("n", "<A-q>", "<Cmd>BufferClose<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", { noremap = true, silent = true, desc = "Toggle pick mode" })
-- Sort automatically by...
map(
    "n",
    "<leader>bb",
    "<Cmd>BufferOrderByBufferNumber<CR>",
    { noremap = true, silent = true, desc = "Order buffers by number" }
)
map("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", { noremap = true, silent = true, desc = "Order buffers by name" })
map(
    "n",
    "<leader>bd",
    "<Cmd>BufferOrderByDirectory<CR>",
    { noremap = true, silent = true, desc = "Order buffers by directory" }
)
map(
    "n",
    "<leader>bl",
    "<Cmd>BufferOrderByLanguage<CR>",
    { noremap = true, silent = true, desc = "Order buffers by language" }
)
map(
    "n",
    "<leader>bw",
    "<Cmd>BufferOrderByWindowNumber<CR>",
    { noremap = true, silent = true, desc = "Order buffers by windows" }
)
