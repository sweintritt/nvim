-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- TODO convert to lua
-- command Log :call AddLogEntry()
--
-- Add the current date as markdown headline for a new log entry

function AddLogEntry()
  vim.cmd([[put =strftime('# %A %d.%m.%Y%n%n%n')]])
  local position = vim.fn.getpos(".")
  vim.cmd("put _")
  vim.fn.setpos(".", position)
  vim.cmd("startinsert!")
end
