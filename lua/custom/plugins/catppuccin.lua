-- Catppuccin is a community-driven pastel theme that aims to be the middle ground
-- between low and high contrast themes. It consists of 4 soothing warm flavors with
-- 26 eye-candy colors each, perfect for coding, designing, and much more!
--  https://github.com/catppuccin/nvim
return {}
--[[
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	init = function()
		-- Load the colorscheme here.
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
}
]]--
