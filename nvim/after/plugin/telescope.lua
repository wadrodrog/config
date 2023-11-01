local builtin = require('telescope.builtin')

-- Project
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'Find Files'})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {desc = 'Live Grep'})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {desc = 'Quick Fix'})

-- File
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {desc = 'Symbols'})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {desc = 'Diagnostics'})

-- Vim
vim.keymap.set('n', '<leader>fv', builtin.commands, {desc = 'Vim Commands'})
vim.keymap.set('n', '<leader>fo', builtin.vim_options, {desc = 'Vim Options'})

-- Git
vim.keymap.set('n', '<leader>fg', builtin.git_files, {desc = 'Git Files'})
vim.keymap.set('n', '<leader>fc', builtin.git_commits, {desc = 'Git Commits'})
vim.keymap.set('n', '<leader>ft', builtin.git_status, {desc = 'Git Status'})
