return {
	-- https://github.com/navarasu/onedark.nvim
	"navarasu/onedark.nvim",
	name = "onedark",
	priority = 1000,
	init = function()
		require("onedark").setup({
			style = "warmer",
		})
		require("onedark").load()
		require("lualine").setup({
			options = {
				theme = "onedark",
			},
		})
	end,
}
