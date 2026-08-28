return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("config.treesitter")
		end,
	},
	{
		"mason-org/mason.nvim",
		config = function()
			require("config.mason")
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			require("config.lsp")
		end,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" }, -- only needed before saving
		cmd = { "ConformInfo" },
		config = function()
			require("config.conform")
		end,
	},
}
