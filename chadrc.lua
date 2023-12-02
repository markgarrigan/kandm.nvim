local opt = vim.opt -- for conciseness

-- hide lsp virtual text
vim.diagnostic.config({virtual_text = false})

-- Change diagnostic symbols in gutter
local signs = { Error = "✖︎", Warn = "！", Hint = "⚡︎", Info = "ℹ" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

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
