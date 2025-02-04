-- All natural pine, faux fur and a bit of soho vibes for the classy minimalist
-- https://github.com/rose-pine/neovim
return {
	"navarasu/onedark.nvim",
	name = "onedark",
	priority = 1000,
	init = function()
		require('onedark').setup {
			style = 'darker'
		}
		require('onedark').load()
	end,
}
