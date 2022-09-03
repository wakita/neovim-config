local api = vim.api

local M = {}

function M.makeScratch()
  api.nvim_command('enew')
  local bo = vim.bo[0]
  bo.buftype='nofile'
  bo.bufhidden='hide'
  bo.swapfile=false
end

function M.command(nvim_command)
  api.nvim_command(nvim_command)
end

-- https://oroques.dev/notes/neovim-init/#mappings
function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.rtp()
  return vim.o.rtp
end

M.command('command! Scratch lua require"tools".makeScratch()')

return M
