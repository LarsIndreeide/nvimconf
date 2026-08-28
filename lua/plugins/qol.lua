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
		"MinifTanjim/nui.nvim",
		-- lazy = false,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		lazy = false,
		config = function()
			require("config.toggleterm")
		end,
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
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
			"nvim-lua/plenary.nvim",
			{
				"chrisgrieser/nvim-tinygit", -- optional: for Github PR view
				dependencies = { "stevearc/dressing.nvim" },
			},
		},
		cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph", "Fugit2Rebase" },
		keys = {
			{ "<leader>F", mode = "n", "<cmd>Fugit2<cr>" },
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto", -- picks up your colorscheme (catppuccin) automatically
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					globalstatus = true, -- single statusline across splits instead of one per window
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
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
