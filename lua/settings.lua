vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true
-- Make line numbers default
vim.opt.number = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
-- Enable break indent
vim.opt.breakindent = true
-- Save undo history
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Show ruler on the right side
vim.opt.colorcolumn = "85"
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
