-- A snazzy 💅 buffer line (with tabpage integration) for Neovim built using lua.
-- https://github.com/akinsho/bufferline.nvim
return {
	"akinsho/bufferline.nvim",
	name = "bufferline",
	version = "*",
	init = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				show_close_icon = false,
				show_buffer_close_icon = false,
				show_buffer_icons = true,
			},
		})
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
