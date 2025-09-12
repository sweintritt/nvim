return
-- AI Assistant (GitHub Copilot) - using Lua plugin for better integration
{
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = { auto_trigger = true, keymap = { accept = "<Tab>" } },
		})
	end,
}
