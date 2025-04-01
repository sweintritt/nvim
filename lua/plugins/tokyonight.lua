return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		-- Load the colorscheme here.
		vim.cmd.colorscheme("tokyonight-night")
	end,
	opts = {},
}
