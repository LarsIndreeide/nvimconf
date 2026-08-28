local treesitter = require("nvim-treesitter")

treesitter.setup()
treesitter.install({ "lua", "vim", "vimdoc", "python", "bash", "markdown" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "vim", "vimdoc", "python", "bash", "markdown" },
  callback = function()
    vim.treesitter.start() -- highlighting is now Neovim core, not nvim-treesitter
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
