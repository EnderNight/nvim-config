local notify = require("notify")

vim.api.nvim_create_user_command("Dismiss", function()
	notify.dismiss()
end, {})
