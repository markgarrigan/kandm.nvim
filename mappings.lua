local M = {}

-- In order to disable a default keymap, use
M.disabled = {}

-- Your custom mappings
M.abc = {
  n = {
    ['<leader>wc'] = {'<cmd>close<CR>', '[W]indow [C]lose.'},
    ['<leader>lg'] = {'<cmd>LazyGit<CR>', '[L]azy [G]it.'},
    ['<leader>sf'] = {'<cmd>Telescope find_files<CR>', '[S]earch [F]iles in cwd.'},
    ['<leader>sg'] = {'<cmd>Telescope git_files<CR>', '[S]earch [G]it files in cwd.'},
    ['<leader>ss'] = {'<cmd>Telescope live_grep<CR>', '[S]earch [S]tring in cwd.'},
    ['<leader>sb'] = {'<cmd>Telescope buffers<CR>', '[S]earch [B]uffers in current instance.'},
    ['<leader>sh'] = {'<cmd>Telescope help_tags<CR>', '[S]earch [H]elp tags.'},
    ['<leader>sr'] = {'<cmd>Telescope oldfiles<CR>', '[S]earch [R]ecent files.'},
    ['<leader>sk'] = {'<cmd>Telescope keymaps<CR>', '[S]earch [K]eymaps.'},
    ['<leader>sc'] = {'<cmd>Telescope grep_string<CR>', '[S]earch string under [C]ursor.'},
  },

  i = {
    ['<C-s>'] = {'<ESC>:w<CR>l ', 'Save current buffer in insert mode.'},
  },

  v = {
    ['<C-s>'] = {'<ESC>:w<CR> ', 'Save current buffer in visual mode'},
  },
}

return M
