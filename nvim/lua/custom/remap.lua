vim.g.mapleader = " "

-- Standard actions --
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", {desc = 'Save File'})
vim.keymap.set("n", "<C-z>", "u", {desc = 'Undo'})
vim.keymap.set("n", "<C-y>", "<C-r>", {desc = 'Redo'})
vim.keymap.set("n", "<C-a>", "<esc>ggVG<CR>", {desc = 'Select All'})
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", {desc = 'Remove Highlight'})
vim.keymap.set("n", "<C-d>", "yyp", {desc = 'Duplicate Line Down'})
vim.keymap.set("n", "<C-D>", "yyP", {desc = 'Duplicate Line Up'})
vim.keymap.set("n", "<leader>n", "<cmd>set rnu!<CR>", {desc = 'Toggle Relative Numbers'})

-- Switch windows --
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = 'Switch to left window'})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = 'Switch to lower window'})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = 'Switch to upper window'})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = 'Switch to right window'})



---- Plugins ----

-- Update plugins --
vim.keymap.set("n", "<leader>upp", "<cmd>:PackerSync<CR>", {desc = 'Update packer plugins'})
vim.keymap.set("n", "<leader>upm", "<cmd>:Mason<CR>", {desc = 'Update Mason LSPs'})
vim.keymap.set("n", "<leader>upt", "<cmd>:TSUpdate<CR>", {desc = 'Update treesitter'})
vim.keymap.set("n", "<leader>ups", "<cmd>:so<CR>", {desc = 'Update source (:so)'})

-- nvim-tree --
vim.keymap.set("n", "<C-n>", "<cmd>:NvimTreeToggle<CR>", {desc = 'Show Files (nvim-tree)'})

-- bufferline --
vim.keymap.set("n", "<C-w>", "<cmd>:bdelete!<CR>", {desc = 'Close tab'})
vim.keymap.set("n", "<Tab>", "<cmd>:bnext<CR>", {desc = 'Switch tabs'})
vim.keymap.set("n", "<S-Tab>", "<cmd>:bprev<CR>", {desc = 'Reverse switch tabs'})

-- Undo Tree --
vim.keymap.set('n', '<leader>un', vim.cmd.UndotreeToggle, {desc = 'Undo Tree'})

-- Markdown Preview
vim.keymap.set("n", "<leader>md", "<cmd>:MarkdownPreview<CR>", {desc = 'Markdown Preview'})

-- Git --
vim.keymap.set("n", "<leader>git", "<cmd>Neogit kind=auto<CR>", {desc = 'Git'})
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", {desc = 'Git Diff'})


---- Utilities ----

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = 'Move Lines Down'})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = 'Move Lines Up'})
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {desc = 'Replace Text'})
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = 'Make File Executable', silent = true })



-- Other --

-- Git
vim.keymap.set("n", "<leader>gp", "<cmd>:Gitsigns preview_hunk<CR>")

-- Trouble
vim.keymap.set("n", "<leader>tr", "<cmd>:TroubleToggle<CR>")

-- Todo
vim.keymap.set("n", "<leader>td", "<cmd>:TodoTrouble<CR>")



-- Fixes
vim.keymap.set("n", "J", "mzJ`z")
--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Terminal
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

