-- Init.lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.mappings")
require("config.lazy")
require("config.base16").setup()
