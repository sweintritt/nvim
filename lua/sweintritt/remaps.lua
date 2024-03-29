vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-f>", ":call CleanUpTheFile()<CR>")

vim.keymap.set("x", "<C-r>", "<ESC>:nohlsearch<CR>") -- reset search highlighting

-- Switch between buffers
vim.keymap.set("n", "<C-A-PageDown>", ":call NextBuffer()<CR>")
vim.keymap.set("n", "<C-A-PageUp>", ":call PreviousBuffer()<CR>")
vim.keymap.set("n", "<C-x>", ":call NextBuffer()<CR>")
vim.keymap.set("n", "<C-y>", ":call PreviousBuffer()<CR>")

-- Easy window navigation
vim.keymap.set("n", "<C-up>", "<C-w>k")
vim.keymap.set("n", "<C-down>", "<C-w>j")
vim.keymap.set("n", "<C-left>", "C-w>h")
vim.keymap.set("n", "<C-right>", "C-w>l")
vim.keymap.set("n", "<C-k>", "C-w>k")
vim.keymap.set("n", "<C-j>", "C-w>j")
vim.keymap.set("n", "<C-h>", "C-w>h")
vim.keymap.set("n", "<C-l>", "C-w>l")

-- Easy help navigation
-- follow links
vim.keymap.set("n", "<CR>", "C-]>") -- Follow links
vim.keymap.set("n", "<BS>", "C-T>") -- Go back

-- copy line to xterm clipboard
vim.keymap.set("v", "<C-c>", "+yi")
-- paste from xterm clipboard
vim.keymap.set("v", "<C-v>", "c<ESC>\"+p")
vim.keymap.set("i", "<C-v>", "ESC>\"+pa")

-- delete current line
vim.keymap.set("n", "<C-d>", "dd")
-- move line up
vim.keymap.set("n", "<A-up>", ":m .-2<CR>")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>")
-- move line down
vim.keymap.set("n", "<A-down>", ":m .+1<CR>")
vim.keymap.set("n", "<A-j>", ":m .+1<CR>")

-- don't jump over split lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<up>", "gk")
vim.keymap.set("n", "<down>", "gj")

vim.keymap.set("n", "<C-w>", ":call AdvClose()<CR>")

--"map <F7> <ESC>:setlocal spell! spelllang=en_us<CR>
--map <F7> <ESC>:setlocal spell! spelllang=de_de<CR>

--inoremap <Tab> <C-R>=SuperCleverTab()<cr>
