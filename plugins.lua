local plugins = {
  {
    'kdheepak/lazygit.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  {
    'echasnovski/mini.pairs',
    version = '*',
  },
}

return plugins
