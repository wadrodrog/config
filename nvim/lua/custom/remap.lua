-- Standard actions --
vim.g.mapleader = " "
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>")
vim.keymap.set("n", "<C-z>", "u")
vim.keymap.set("n", "<C-y>", "<C-r>")
vim.keymap.set("n", "<Esc>", "<cmd>:noh<CR>")

-- Switch windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")



-- Plugins --

-- Files (mvim-tree plugin). Remaps in after/plugin/nvim_tree.lua, F1 for help
vim.keymap.set("n", "<C-n>", "<cmd>:NvimTreeToggle<CR>")

-- Buffers (bufferline plugin)
vim.keymap.set("n", "<C-w>", "<cmd>:bdelete!<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:bnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>:bprev<CR>")

-- Undo Tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Markdown Preview
vim.keymap.set("n", "<leader>md", "<cmd>:MarkdownPreview<CR>")



-- Utilities --

-- Move Lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Replace text
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


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

