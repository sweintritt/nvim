-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.colorcolumn = "85" -- show ruler on the right side
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true
vim.opt.autowrite = true -- When switching buffers save file automatically
vim.opt.autoread = true -- reload buffers on external changes
vim.opt.autoindent = true -- automatic intendation
vim.opt.copyindent = true -- copy the previous indent
vim.opt.tabstop = 4 -- vim.opt.tab width to n spaces
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.history = 250 -- Sets how many lines of history VIM has to remember
vim.opt.backup = false -- no backups
vim.opt.writebackup = false -- no backups
vim.opt.swapfile = false -- no swapfile
vim.opt.title = true -- change the terminal's title
vim.opt.listchars = "tab:>-,space:.,extends:#,nbsp:." -- Show whitespaces and use '#' at the end of lines to mark lines that extend off-screen
vim.opt.list = true
-- Make Vim to handle long lines nicely.
vim.opt.textwidth = 85
vim.opt.wrap = true
vim.opt.formatoptions = "qrn1"
vim.opt.backspace = "indent,eol,start" -- Makes backspace key more powerful.
vim.opt.ruler = true -- Show the cursor position all the time
vim.opt.cursorline = true -- highlight the current line
vim.opt.ignorecase = true -- ignore case in search
vim.opt.smartcase = true -- ... but not when search pattern contains upper case characters
vim.opt.incsearch = true -- jump to search results on search
vim.opt.hlsearch = true -- highlight found results
vim.opt.showmode = false -- We show the mode with airline or lightline
