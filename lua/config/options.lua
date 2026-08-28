-- Options, no good order

-- Right click tweaks
vim.cmd([[
  aunmenu PopUp.-2-
  aunmenu PopUp.How-to\ disable\ mouse
]])

-- No ugly tilde
vim.opt.fillchars = { eob = " " }
vim.opt.number = true

-- Tab options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Some plugins need this
vim.opt.hidden = true
