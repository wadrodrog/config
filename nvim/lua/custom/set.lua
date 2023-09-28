--  Color scheme
vim.cmd.colorscheme("carbonfox")

-- Disable netrw because of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Spell check
vim.opt.spell = true
vim.opt.spelllang="en,ru"

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Ruler, width
vim.opt.colorcolumn = "80"

-- Tabs to spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Lines off end to scroll
vim.opt.scrolloff = 8

-- Move cursor to the next line if arrow key is pressed while at end of the current line
vim.opt.whichwrap="b,s,<,>,[,]"

-- Do not wrap the lines
vim.opt.wrap = false

-- Smart indent
vim.opt.smartindent = true

-- Neovide
if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font:h10"
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_cursor_animation_length = 0
    vim.o.title = true

    vim.keymap.set('v', '<C-c>', '"+y')
    vim.keymap.set('n', '<C-v>', '"+P')
    vim.keymap.set('v', '<C-v>', '"+P')
    vim.keymap.set('c', '<C-v>', '<C-R>+')
    vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli')
end
