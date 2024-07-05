local toggleterm = require("toggleterm")

vim.keymap.set("n", "<leader>tt", function()
    toggleterm.toggle()
end, { desc = "Open a terminal" })
