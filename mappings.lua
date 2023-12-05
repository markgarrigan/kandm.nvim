local M = {}

-- In order to disable a default keymap, use
M.disabled = {}

-- Your custom mappings
M.kandm = {
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
    ['<leader>D']  = {'<cmd>Telescope diagnostics bufnr=0<CR>', 'Show [D]iagnostics for the file.'},
    ['<leader>d']  = {'<cmd>lua vim.diagnostic.open_float()<CR>', 'Show [D]iagnostics for the line.'},
    ['[d']         = {'<cmd>lua vim.diagnostic.goto_prev()<CR>', 'Jump to previous diagnostic in file.'},
    [']d']         = {'<cmd>lua vim.diagnostic.goto_next()<CR>', 'Jump to next diagnostic in file.'},
    ['<leader>rs+'] = {'<cmd>horizontal resize +2<CR>', '[R]e[S]ize horizontal larger.'},
    ['<leader>rs_'] = {'<cmd>horizontal resize -2<CR>', '[R]e[S]ize horizontal smaller.'},
    ['<leader>rs='] = {'<cmd>vertical resize +5<CR>', '[R]e[S]ize vertical larger.'},
    ['<leader>rs-'] = {'<cmd>vertical resize -5<CR>', '[R]e[S]ize vertical smaller.'},
    ['<leader>du'] = {
      function()
        require('dapui').toggle({})
      end,
      '[D]ebug [U]i.'
    },
    ['<leader>de'] = {
      function()
        require('dapui').eval()
      end,
      '[D]ebug [E]val'
    },
    ['<leader>dB'] =  {
      function()
        require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))
      end,
      '[D]ebug [B]reakpoint Condition'
    },
    ['<leader>db'] = {
      function()
        require('dap').toggle_breakpoint()
      end,
      '[D]ebug [B]reakpoint.'
    },
    ['<leader>dc'] = {
      function()
        require('dap').continue()
      end,
      '[D]ebug [C]ontinue.'
    },
    ['<leader>dC'] = {
      function()
        require('dap').run_to_cursor()
      end,
      '[D]ebug Run to [C]ursor.'
    },
    ['<leader>dg'] = {
      function()
        require('dap').goto_()
      end,
      '[D]ebug [G]o to line (no execute).'
    },
    ['<leader>di'] = {
      function()
        require('dap').step_into()
      end,
      '[D]ebug Step [I]nto.'
    },
    ['<leader>dj'] = {
      function()
        require('dap').down()
      end,
      '[D]ebug Down'
    },
    ['<leader>dk'] = {
      function()
        require('dap').up()
      end,
      '[D]ebug Up'
    },
    ['<leader>dl'] = {
      function()
        require('dap').run_last()
      end,
      '[D]ebug Run Last'
    },
    ['<leader>do'] = {
      function()
        require('dap').step_out()
      end,
      '[D]ebug Step [O]ut'
    },
    ['<leader>dO'] = {
      function()
        require('dap').step_over()
      end,
      '[D]ebug Step [O]ver'
    },
    ['<leader>dp'] = {
      function()
        require('dap').pause()
      end,
      '[D]ebug [P]ause'
    },
    ['<leader>dr'] = {
      function()
        require('dap').repl.toggle()
      end,
      '[D]ebug Toggle [R]EPL'
    },
    ['<leader>ds'] = {
      function()
        require('dap').session()
      end,
      '[D]ebug [S]ession'
    },
    ['<leader>dt'] = {
      function()
        require('dap').terminate()
      end,
      '[D]ebug [T]erminate'
    },
    ['<leader>dw'] = {
      function()
        require('dap.ui.widgets').hover()
      end,
      '[D]ebug [W]idgets'
    },
  },

  i = {
    ['<C-s>'] = {'<ESC>:w<CR>l ', 'Save current buffer in insert mode.'},
  },

  v = {
    ['<C-s>'] = {'<ESC>:w<CR> ', 'Save current buffer in visual mode'},
  },
}

return M
