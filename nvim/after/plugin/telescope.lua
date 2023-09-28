local builtin = require('telescope.builtin')

-- Project
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>qf', builtin.quickfix, {})

-- File
vim.keymap.set('n', '<leader>sm', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>dgn', builtin.diagnostics, {})

-- Vim
vim.keymap.set('n', '<leader>vc', builtin.commands, {})
vim.keymap.set('n', '<leader>vo', builtin.vim_options, {})

-- Git
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gt', builtin.git_stash, {})
