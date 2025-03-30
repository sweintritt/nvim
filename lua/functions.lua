-- My custom NeoVim function additional to kickstart

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

function AddLogEntry()
	-- Insert the formatted date
	vim.api.nvim_put({ "", os.date("# %A %d.%m.%Y") }, "l", false, true)
	-- Insert an empty line after the date
	vim.api.nvim_put({ "- ", "", "**WRITE**", "" }, "l", true, true)
	vim.cmd("norm! 4k")
	-- Enter insert mode
	vim.cmd("startinsert!")
end
