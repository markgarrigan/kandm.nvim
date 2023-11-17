local M = {}

-- In order to disable a default keymap, use
M.disabled = {}

-- Your custom mappings
M.abc = {
  n = {
    ['<leader>wc'] = {'<cmd>close<CR>', '[W]indow [C]lose.'},
    ['<leader>lg'] = {'<cmd>LazyGit<CR>', '[L]azy [G]it.'},
  },

  i = {
    ['<C-s>'] = {'<ESC>:w<CR>l ', 'Save current buffer in insert mode.'},
  },

  v = {
    ['<C-s>'] = {'<ESC>:w<CR> ', 'Save current buffer in visual mode'},
  },
}

return M
