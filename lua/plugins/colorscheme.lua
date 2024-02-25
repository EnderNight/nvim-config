return {
    'navarasu/onedark.nvim',
    priority = 1000,

    opts = {
        style = 'deep',

        ending_tildes = true,

        code_style = {
            keywords = 'bold',
            functions = 'bold',
        },
    },

    config = function()
        require('onedark').load()
    end
}
