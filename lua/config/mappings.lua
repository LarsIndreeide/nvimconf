local map = vim.keymap.set
local opts = { noremap = true, silent = true }



-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

map("n", "<Esc>", "<cmd>nohlsearch<cr>", opts)

map("v", "<", "<gv", { desc = "Indent left, keep selection" })
map("v", ">", ">gv", { desc = "Indent right, keep selection" })

-- Telescope stuff
-- General movement
map("n", "<Leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files" })
map("n", "<Leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope Buffers" })

-- Git stuffs
map("n", "<Leader>fgc", "<cmd>Telescope git_commits<cr>", { desc = "Telescope Git Commits" })
map("n", "<Leader>fgs", "<cmd>Telescope git_status<cr>", { desc = "Telescope Git Status" })
map("n", "<Leader>fgb", "<cmd>Telescope git_branches<cr>", { desc = "Telescope Git Branches" })
map("n", "<Leader>fgf", "<cmd>Telescope git_files<cr>", { desc = "Telescope Git Files" })

-- Drip
map("n", "<Leader>fc", "<cmd>Telescope colorscheme enable_preview=true<cr>", { desc = "Telescope change colourscheme" })

-- Buffer navigation
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<Leader>b", "<cmd>enew<cr>", { desc = "New buffer" })

-- Line numbering stuff
map("n", "<Leader>tn", "<cmd>set number!<cr>", { desc = "Toggle line numbers" })
map("n", "<Leader>tr", "<cmd>set relativenumber!<cr>", { desc = "Toggle relative line numbers" })

-- Nvim tree stuffs
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Nvim-tree Toggle File Explorer" })
map("n", "<Leader>nn", "<cmd>NvimTreeCollapse<cr>", { desc = "Nvim-tree Collapse all" })
map("n", "<Leader>nb", "<cmd>NvimTreeCollapseKeepBuffers<cr>", { desc = "Nvim-tree Collapse except buffers" })

-- toggleterm stuff
map("t", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm Toggle floating" })
map("t", "<A-h>", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "ToggleTerm Toggle horizontal" })
map("t", "<A-v>", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "ToggleTerm Toggle vertical" })
map("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm Toggle floating" })
map("n", "<A-h>", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "ToggleTerm Toggle horizontal" })
map("n", "<A-v>", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "ToggleTerm Toggle vertical" })
