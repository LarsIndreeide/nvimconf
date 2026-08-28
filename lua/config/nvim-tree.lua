require("nvim-tree").setup({
	filters = {
		git_ignored = true,
		dotfiles = true,
		git_clean = false,
		no_buffer = false,
		custom = {},
		exclude = {},
	},
})

require("nvim-tree.api").tree.open()
