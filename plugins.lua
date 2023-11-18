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
  {
    'nvim-telescope/telescope.nvim',
    opts = function()
      local conf = require 'plugins.configs.telescope'
      local actions = require 'telescope.actions'
      conf.defaults.mappings.i = {
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
      }
      return conf
    end,
  },
  {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require("nvim-surround").setup({})
    end
  },
  { 'mg979/vim-visual-multi' },
}

return plugins
