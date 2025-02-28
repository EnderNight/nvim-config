return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    local onedark = require 'onedark'

    onedark.setup {
      style = 'darker',
      ending_tildes = true,
      code_style = {
        comments = 'italic',
        keywords = 'bold',
        functions = 'bold',
      },
    }

    onedark.load()
  end,
}
