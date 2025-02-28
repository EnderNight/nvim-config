return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {},
  },
  opts = {
    ensure_installed = {
      'c',
      'lua',
      'vim',
      'vimdoc',
      'query',
      'markdown',
      'markdown_inline',
    },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
