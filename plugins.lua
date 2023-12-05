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
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {'html', 'lua', 'javascript', 'typescript', 'css', 'scss', 'bash', 'json'}
    },
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
      require('nvim-surround').setup({})
    end
  },
  { 'mg979/vim-visual-multi' },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'lua-language-server',
        'html-lsp',
        'htmx-lsp',
        'stylua',
        'tailwindcss-language-server',
        'typescript-language-server',
        'css-lsp',
        'js-debug-adapter',
      },
    },
  },
  {
    'mfussenegger/nvim-dap',
    config = function()
      require "custom.configs.nvim-dap"
    end,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    lazy = false,
    dependencies = 'mason.nvim',
    cmd = { 'DapInstall', 'DapUninstall' },
    opts = {
      automatic_installation = true,
      ensure_installed = {
        'js'
      }
    },
  },
  {
    'rcarriga/nvim-dap-ui',
    config = function()
      require "custom.configs.nvim-dap-ui"
    end,
  },
}

return plugins
