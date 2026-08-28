return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		lazy = false,
		config = function()
			require("config.toggleterm")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"SuperBo/fugit2.nvim",
		cond = function()
			return vim.fs.find(".git", { upward = true, path = vim.fn.getcwd() })[1] ~= nil
		end,
		build = false,
		opts = {
			width = 100,
		},
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			{
				"chrisgrieser/nvim-tinygit",
				dependencies = { "stevearc/dressing.nvim" },
			},
		},
		cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph", "Fugit2Rebase" },
		keys = {
			{ "<leader>F", mode = "n", "<cmd>Fugit2<cr>" },
		},
	},
}
