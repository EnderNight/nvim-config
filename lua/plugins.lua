
return require('packer').startup(function(use)
    
    use 'wbthomason/packer.nvim'

    use { 'sainnhe/gruvbox-material', config = function() require('colorscheme') end }


end)
