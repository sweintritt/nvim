-- My custom NeoVim mappings additional to kickstart

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Copy to and paste from xterm clipboard
vim.keymap.set("v", "<C-c>", '"+yi', { desc = "copy line to xterm clipboard" })
vim.keymap.set("v", "<C-v>", '<ESC>"+p', { desc = "Paste from xterm clipboard" })
vim.keymap.set("i", "<C-v>", '<ESC>"+pa', { desc = "Pase from xterm clipboard" })

vim.keymap.set("n", "<C-d>", "dd", { desc = "Delete the current line" })
vim.keymap.set("n", "<C-s-k>", ":m .-2<CR>", { desc = "Move the current line up" })
vim.keymap.set("n", "<C-s-j>", ":m .+1<CR>", { desc = "Move the current line down" })

vim.keymap.set("n", "<C-x>", ":bn<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<C-y>", ":bp<CR>", { desc = "Switch to previous buffer" })

vim.keymap.set("n", "<C-r>", "<ESC>:nohlsearch<CR>", { desc = "reset search highlighting" })

-- Easy movement in insert mode
vim.keymap.set("i", "<C-k>", "<C-o>k")
vim.keymap.set("i", "<C-j>", "<C-o>j")
vim.keymap.set("i", "<C-h>", "<C-o>h")
vim.keymap.set("i", "<C-l>", "<C-o>l")

-- Disable arrow keys
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
vim.keymap.set("i", "<Up>", "<Nop>")
vim.keymap.set("i", "<Down>", "<Nop>")
vim.keymap.set("i", "<Left>", "<Nop>")
vim.keymap.set("i", "<Right>", "<Nop>")

vim.keymap.set("n", "<CR>", "<C-]>") -- Follow links
vim.keymap.set("n", "<BS>", "<C-T>") -- Go back

-- delete current line
vim.keymap.set("n", "<C-d>", "dd")

-- don't jump over split lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

vim.api.nvim_set_keymap("n", "<leader>l", ":lua AddLogEntry()<CR>", { noremap = true, silent = true })
