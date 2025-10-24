-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Copy to and paste from xterm clipboard
vim.keymap.set("v", "<C-c>", '"+yi', { desc = "copy line to xterm clipboard" })
vim.keymap.set("v", "<C-v>", '<ESC>"+p', { desc = "Paste from xterm clipboard" })
vim.keymap.set("i", "<C-v>", '<ESC>"+pa', { desc = "Pase from xterm clipboard" })

vim.keymap.set("n", "<C-d>", "_dd", { desc = "Delete the current line. Without copying." })

vim.keymap.set("n", "<C-x>", ":bn<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<C-y>", ":bp<CR>", { desc = "Switch to previous buffer" })

vim.keymap.set("n", "<leader>ts", ":setlocal spell spelllang=de<CR>", { desc = "[T]oogle [S]pell checking" })
vim.keymap.set("n", "<C-r>", ":nohlsearch<CR>", { desc = "reset search highlighting" })
vim.keymap.set("c", "<C-r>", "<C-r>+", { desc = "Paste into commandline" })

-- Easy movement in insert mode
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Easy movement in commane-line mode
vim.keymap.set("c", "<C-k>", "<Up>")
vim.keymap.set("c", "<C-j>", "<Down>")
vim.keymap.set("c", "<C-h>", "<Left>")
vim.keymap.set("c", "<C-l>", "<Right>")

vim.keymap.set("n", "<leader><CR>", "<C-]>", { desc = "Follow links in help" })
vim.keymap.set("n", "<BS>", "<C-T>", { desc = "Jump back in help" })

-- don't jump over split lines
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

vim.keymap.set("n", "<leader>ol", ":e ~/Dokumente/notes/log/log.md<CR>", { desc = "[O]pen [L]og" })
vim.keymap.set("n", "<leader>om", ":e ~/Dokumente/notes/morning_tasks.md<CR>", { desc = "[O]pen [M]orning [T]asks" })
vim.keymap.set("n", "<leader>ale", ":lua AddLogEntry()<CR>", { desc = "[A]dd [L]og [E]ntry" })
vim.keymap.set("n", "<leader>st", ":TodoTelescope<CR>", { desc = "[S]earch [T]odos" })
vim.keymap.set("n", "<leader>cb", ":bp | sp | bn | bd<CR>", { desc = "[C]lose [B]uffer" })
-- Save and quit shortcuts
vim.keymap.set("n", "<Leader>w", ":w<CR>", { desc = "[W]rite file" })
vim.keymap.set("n", "<Leader>q", ":q<CR>", { desc = "[Q]uit" })

-- Toggle file tree
vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { desc = "Toggle [N]eotree" })

vim.keymap.set("i", "jh", "<ESC>", { desc = "Easier escape from insert mode" })
vim.keymap.set("v", "jh", "<ESC>", { desc = "Easier escape from visual mode" })
