---@type ChadrcConfig
local M = {}

M.mappings = require 'custom.mappings'
M.plugins = 'custom.plugins'

M.ui = {
  theme = 'github_light',
  statusline = {
    theme = 'vscode_colored'
  },
}

return M
