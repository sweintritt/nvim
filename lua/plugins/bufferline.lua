-- A snazzy 💅 buffer line (with tabpage integration) for Neovim built using lua.
-- https://github.com/akinsho/bufferline.nvim
return {
	'akinsho/bufferline.nvim',
	name = "bufferline",
	version = "*",
	init = function()
		vim.opt.termguicolors = true
		require("bufferline").setup {
		}
	end,
	dependencies = {
		'nvim-tree/nvim-web-devicons'
	}
}
