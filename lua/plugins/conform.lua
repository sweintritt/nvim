return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
--				c = { "clang-format" },
--				cpp = { "clang-format" },
--				java = { "google-java-format" },
--				javascript = { "prettier" },
--				go = { "gofmt" },
--				rust = { "rustfmt" },
--				css = { "prettier" },
--				html = { "prettier" },
--				json = { "prettier" },
--				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>f", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
