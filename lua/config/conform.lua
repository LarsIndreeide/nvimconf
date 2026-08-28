require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "pyink" },
		javascript = { "prettierd" },
		json = { "prettierd" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
