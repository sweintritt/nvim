-- Dark and Light Themes for neovim on Atom One Dark & Atom One Light theme
-- https://github.com/navarasu/onedark.nvim
return {
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
