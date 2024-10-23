-- My custom NeoVim settings additional to kickstart

vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Show ruler on the right side
vim.opt.colorcolumn = "85"

vim.opt.textwidth = 85

-- Make Vim to handle long lines nicely.
vim.opt.textwidth = 85
vim.opt.wrap = true
vim.opt.formatoptions = "qrn1"

-- disable folding
vim.opt.foldenable = false

-- no bells
vim.opt.errorbells = false
vim.opt.visualbell = false

-- encoding
vim.opt.encoding = "utf-8"
-- activate lazy redraw
vim.opt.lazyredraw = true
vim.opt.ttyfast = true
-- When switching buffers save file automatically
vim.opt.autowrite = true
-- reload buffers on external changes
vim.opt.autoread = true
-- automatic intendation
vim.opt.autoindent = true
-- copy the previous indent
vim.opt.copyindent = true
-- tab width to n spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
-- use spaces instead of tabs
vim.opt.expandtab = true
-- show matching parenthesis
vim.opt.showmatch = true
-- Sets how many lines of history VIM has to remember
vim.opt.history = 250
-- Limit popup menu height
vim.opt.pumheight = 15
-- no backups
vim.opt.backup = false
-- no backups
vim.opt.writebackup = false
-- no swapfile
vim.opt.swapfile = false
vim.opt.expandtab = true
-- change the terminal's title
vim.opt.title = true
-- Makes backspace key more powerful.
vim.opt.backspace = "indent,eol,start"
-- Show me what I'm typing
vim.opt.showcmd = true
-- Split vertical windows right to the current windows
vim.opt.splitright = true
-- Show the cursor position all the time
vim.opt.ruler = true
-- highlight the current line
vim.opt.cursorline = true
-- Prefer Unix over Windows over OS 9 formats
vim.opt.fileformats = "unix,dos,mac"
-- jump to search results on search
vim.opt.incsearch = true
-- highlight found results
vim.opt.hlsearch = true
