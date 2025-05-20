function AddLogEntry()
	-- Insert the formatted date
	vim.api.nvim_put({ "", os.date("# %A %d.%m.%Y") }, "l", false, true)
	-- Insert an empty line after the date
	vim.api.nvim_put({ "- ", "", "**WRITE**", "" }, "l", true, true)
	vim.cmd("norm! 4k")
	-- Enter insert mode
	vim.cmd("startinsert!")
end
