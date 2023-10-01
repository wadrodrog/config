-- Standard actions --
vim.g.mapleader = " "
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", {desc = 'Save'})
vim.keymap.set("n", "<C-z>", "u", {desc = 'Undo'})
vim.keymap.set("n", "<C-y>", "<C-r>", {desc = 'Redo'})
vim.keymap.set("n", "<C-a>", "<esc>ggVG<CR>", {desc = 'Select All'})
vim.keymap.set("n", "<Esc>", "<cmd>:noh<CR>", {desc = 'Remove Highlight'})

-- Switch windows
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = 'Switch to left window'})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = 'Switch to lower window'})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = 'Switch to upper window'})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = 'Switch to right window'})



-- Plugins --

-- Files (mvim-tree plugin). Remaps in after/plugin/nvim_tree.lua, F1 for help
vim.keymap.set("n", "<C-n>", "<cmd>:NvimTreeToggle<CR>", {desc = 'Files (nvim-tree)'})

-- Buffers (bufferline plugin)
vim.keymap.set("n", "<C-w>", "<cmd>:bdelete!<CR>", {desc = 'Close tab'})
vim.keymap.set("n", "<Tab>", "<cmd>:bnext<CR>", {desc = 'Switch tabs'})
vim.keymap.set("n", "<S-Tab>", "<cmd>:bprev<CR>", {desc = 'Reverse switch tabs'})

-- Undo Tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, {desc = 'Undo Tree'})

-- Markdown Preview
vim.keymap.set("n", "<leader>md", "<cmd>:MarkdownPreview<CR>", {desc = 'Markdown Preview'})



-- Utilities --

-- Move Lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Replace text
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {desc = 'Replace text'})

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = 'Make file executable', silent = true })


-- Other --

-- Git
vim.keymap.set("n", "<leader>gp", "<cmd>:Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gd", "<cmd>:DiffviewOpen<CR>")

-- Trouble
vim.keymap.set("n", "<leader>tr", "<cmd>:TroubleToggle<CR>")

-- Todo
vim.keymap.set("n", "<leader>td", "<cmd>:TodoTrouble<CR>")

-- Comment
vim.keymap.set("n", "<C-_>", "gcc")


-- Fixes
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

