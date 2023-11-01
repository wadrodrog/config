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

-- Fold column
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldcolumn = '1'

-- Neovide
if vim.g.neovide then
    -- Appearance
    vim.o.guifont = "JetBrainsMono Nerd Font:h10"
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_refresh_rate_idle = 30
    vim.o.title = true

    -- Clipboard
    vim.keymap.set('v', '<C-c>', '"+y')
    vim.keymap.set({'n', 'v'}, '<C-v>', '"+p')
    vim.keymap.set('i', '<C-v>', '<ESC>"+pli')
    vim.keymap.set('c', '<C-v>', '<C-R>+')

    -- Zoom
    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
        change_scale_factor(1.25)
        print("Scale: " .. vim.g.neovide_scale_factor)
    end)
    vim.keymap.set("n", "<C-->", function()
        change_scale_factor(1/1.25)
        print("Scale: " .. vim.g.neovide_scale_factor)
    end)
    vim.keymap.set("n", "<C-0>", function()
        vim.g.neovide_scale_factor = 1.0
        print("Scale: " .. vim.g.neovide_scale_factor)
    end)
end
