return {
	"nvim-lualine/lualine.nvim",
	name = "lualine",
	event = "VeryLazy",
	init = function()
		require("lualine").setup({
			options = { theme = "onedark" },
		})
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}
