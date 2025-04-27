return {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
	config = function()
	    require('onedarkpro').setup({
		styles = {
		    functions = "bold",
		    keywords = "bold",
		}
	    })

	    vim.cmd.colorscheme "onedark_vivid"
	end,
    }
}
