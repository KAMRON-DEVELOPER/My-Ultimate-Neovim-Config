return {
	{
		"toppair/peek.nvim",
		event = { "VeryLazy" },
		build = "deno task --quiet build:fast",
		config = function()
			local peek = require("peek")

			peek.setup({
				auto_load = true,
				close_on_bdelete = true,
				update_on_change = true,
				app = "browser",
			})

			-- Define custom commands
			vim.api.nvim_create_user_command("PeekOpen", peek.open, {})
			vim.api.nvim_create_user_command("PeekClose", peek.close, {})

			-- Map keys for opening and closing markdown preview
			vim.keymap.set("n", "<leader>mp", peek.open, { desc = "Keep Open markdown" })
			vim.keymap.set("n", "<leader>mc", peek.close, { desc = "Keep Close markdown" })
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
}
