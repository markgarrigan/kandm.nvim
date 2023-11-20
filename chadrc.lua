local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers

-- line wrapping
opt.wrap = false -- disable line wrapping

---@type ChadrcConfig
local M = {}

M.mappings = require 'custom.mappings'
M.plugins = 'custom.plugins'

M.ui = {
  theme = 'github_light',
  statusline = {
    theme = 'vscode_colored'
  },
  telescope = { style = 'bordered' }, -- borderless / bordered
}

return M
