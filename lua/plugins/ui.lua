return {
	{
		"nvim-lua/plenary.nvim",
		lazy = false,
	},
	{
		"stevearc/dressing.nvim",
		lazy = false,
	},
	{
		"MunifTanjim/nui.nvim",
		-- lazy = false,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		config = function()
			require("config.lualine")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			-- require("nvim-tree").setup({})
			require("config.nvim-tree")
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		config = function()
			require("config.bufferline")
		end,
	},
	{
		"RRethy/base16-nvim",
		lazy = false,
		priority = 1000,
	},
}
