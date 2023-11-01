vim.g.mapleader = ' '

-- Standard actions --
vim.keymap.set('n', ';', ':', {desc = 'Enter command'})
vim.keymap.set('n', '<C-s>', '<cmd>:w<CR>', {desc = 'Save File'})
vim.keymap.set('n', '<C-z>', 'u', {desc = 'Undo'})
vim.keymap.set('n', '<C-y>', '<C-r>', {desc = 'Redo'})
vim.keymap.set('n', '<C-a>', '<esc>ggVG<CR>', {desc = 'Select All'})
vim.keymap.set('n', '<Esc>', '<cmd>noh<CR>', {desc = 'Remove Highlight'})
vim.keymap.set('n', '<C-d>', 'yyp', {desc = 'Duplicate Line Down'})
vim.keymap.set('n', '<C-D>', 'yyP', {desc = 'Duplicate Line Up'})
vim.keymap.set('n', '<leader>n', '<cmd>set rnu!<CR>', {desc = 'Toggle Relative Numbers'})
vim.keymap.set('n', '<leader>z', 'za', {desc = 'Toggle Fold'})

-- Switch windows --
vim.keymap.set('n', '<C-h>', '<C-w>h', {desc = 'Switch to left window'})
vim.keymap.set('n', '<C-j>', '<C-w>j', {desc = 'Switch to lower window'})
vim.keymap.set('n', '<C-k>', '<C-w>k', {desc = 'Switch to upper window'})
vim.keymap.set('n', '<C-l>', '<C-w>l', {desc = 'Switch to right window'})

-- Terminal --
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {desc = 'Unfocus Terminal'})



---- Plugins ----

-- Update plugins --
vim.keymap.set('n', '<leader>upd', '<cmd>Lazy<CR>', {desc = 'Update plugins'})
vim.keymap.set('n', '<leader>upm', '<cmd>Mason<CR>', {desc = 'Update Mason LSPs'})
vim.keymap.set('n', '<leader>ups', '<cmd>so<CR>', {desc = 'Update source (:so)'})

-- Info
vim.keymap.set('n', '<leader>it', '<cmd>TSModuleInfo<CR>', {desc = 'Treesitter modules state for each filetype'})

-- bufferline --
vim.keymap.set('n', '<C-w>', '<cmd>:bdelete!<CR>', {desc = 'Close tab'})
vim.keymap.set('n', '<Tab>', '<cmd>:bnext<CR>', {desc = 'Switch tabs'})
vim.keymap.set('n', '<S-Tab>', '<cmd>:bprev<CR>', {desc = 'Reverse switch tabs'})

-- Git --
vim.keymap.set('n', '<leader>git', '<cmd>Neogit kind=auto<CR>', {desc = 'Git (neogit)'})
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<CR>', {desc = 'Git Diff'})

-- Use plugins --
vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', {desc = 'Show Files (nvim-tree)'})
vim.keymap.set('n', '<leader>un', '<cmd>UndotreeToggle<CR>', {desc = 'Undo Tree'})
vim.keymap.set('n', '<leader>md', '<cmd>MarkdownPreview<CR>', {desc = 'Markdown Preview'})
vim.keymap.set('n', '<leader>tr', '<cmd>TroubleToggle<CR>', {desc = 'Open Trouble View'})
vim.keymap.set('n', '<leader>td', '<cmd>TodoTrouble<CR>', {desc = 'Open Todo View'})



---- Utilities ----

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {desc = 'Move Lines Down'})
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", {desc = 'Move Lines Up'})
vim.keymap.set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', {desc = 'Replace Text'})
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { desc = 'Make File Executable', silent = true })
vim.keymap.set('n', 'J', 'mzJ`z', {desc = 'Fold lower lines'})
