local treesitter = require("nvim-treesitter")
--
-- if vim.loop.os_uname().sysname == "Windows_NT" then
--   require('nvim-treesitter.install').compilers = { "gcc" }
-- end
--

treesitter.setup()


treesitter.install({ "lua", "vim", "vimdoc", "python", "bash", "markdown" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "vim", "vimdoc", "python", "bash", "markdown" },
  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
