return {
	{
		"zaldih/themery.nvim",
		lazy = false,
		dependencies = { "ellisonleao/gruvbox.nvim", "navarasu/onedark.nvim", "folke/tokyonight.nvim" },

		config = function()
			require("themery").setup({
				livePreview = true,
				themes = {
					"onedark",
					"tokyonight",
					{
						name = "Gruvbox dark",
						colorscheme = "gruvbox",
						before = [[vim.opt.background = "dark"]],
					},
					{
						name = "Gruvbox light",
						colorscheme = "gruvbox",
						before = [[vim.opt.background = "light"]],
					},
				},
			})

			vim.keymap.set("n", "<leader>tc", ":Themery<CR>", { desc = "Themery" })
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			vim.keymap.set("n", "<leader>tt", ":TransparentToggle<CR>", { desc = "Toggle transparent" })
		end,
	},
}
