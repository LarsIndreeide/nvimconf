require("bufferline").setup({
	options = {
		mode = "buffers", -- show buffers, not vim tabpages
		diagnostics = "nvim_lsp",
		tab_size = 14,
		max_name_length = 12,
		show_close_icon = false,
		seperator_style = "thin",
		indicator = "underline",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
	},
})
