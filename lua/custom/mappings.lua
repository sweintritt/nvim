-- My custom NeoVim mappings additional to kickstart

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

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
vim.keymap.set("n", "<A-k>", ":m .-2<CR>", { desc = "Move the current line up" })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>", { desc = "Move the current line down" })
