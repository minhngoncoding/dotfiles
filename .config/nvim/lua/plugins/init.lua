return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"knubie/vim-kitty-navigator",
	},
	{
		"nvim-neorg/neorg",
		lazy = false,
		version = "*",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default modules
					["core.concealer"] = {}, -- enables icons/highlighting
					["core.keybinds"] = {},
					["core.dirman"] = { -- Manage workspaces
						config = {
							workspaces = {
								notes = "~/notes",
							},
              default_workspace = "notes",
						},
					},
				},
			})
		end,
	},
}
