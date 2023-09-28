local function remap(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Defaults
    api.config.mappings.default_on_attach(bufnr)

    -- Overrides
    vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit,              opts('Open Preview'))
    vim.keymap.set('n', '<C-c>',         api.fs.copy.node,                   opts('Copy'))
    vim.keymap.set('n', '<C-CR>',        api.tree.change_root_to_node,       opts('CD'))
    vim.keymap.set('n', '<C-v>',         api.fs.paste,                       opts('Paste'))
    vim.keymap.set('n', '<C-x>',         api.fs.cut,                         opts('Cut'))
    vim.keymap.set('n', '<CR>',          api.node.open.edit,              opts('Open Preview'))
    vim.keymap.set('n', '<Del>',         api.fs.trash,                       opts('Trash'))
    vim.keymap.set('n', '<F1>',          api.tree.toggle_help,               opts('Help'))
    vim.keymap.set('n', '<F2>',          api.fs.rename_basename,             opts('Rename: Basename'))
    vim.keymap.set('n', '<S-Del>',       api.fs.remove,                      opts('Delete'))
    vim.keymap.set('n', '<S-F2>',        api.fs.rename_sub,                  opts('Rename: Omit Filename'))
    vim.keymap.set('n', ']',             api.node.navigate.diagnostics.next, opts('Next Diagnostic'))
    vim.keymap.set('n', '[',             api.node.navigate.diagnostics.prev, opts('Prev Diagnostic'))
    vim.keymap.set('n', 'C',             api.fs.copy.absolute_path,          opts('Copy Absolute Path'))
    vim.keymap.set('n', 'D',             api.fs.remove,                      opts('Delete'))
    vim.keymap.set('n', 'E',             api.tree.collapse_all,              opts('Collapse'))
    vim.keymap.set('n', 'F',             api.live_filter.clear,              opts('Clean Filter'))
    vim.keymap.set('n', 'H',             api.tree.toggle_hidden_filter,      opts('Toggle Filter: Dotfiles'))
    vim.keymap.set('n', 'd',             api.fs.trash,                       opts('Trash'))
    vim.keymap.set('n', 'e',             api.tree.expand_all,                opts('Expand All'))
    vim.keymap.set('n', 'h',             api.node.open.horizontal,           opts('Open: Horizontal Split'))
    vim.keymap.set('n', 'i',             api.node.show_info_popup,           opts('Info'))
    vim.keymap.set('n', 'v',             api.node.open.vertical,             opts('Open: Vertical Split'))

    -- Removals
    vim.keymap.del('n', '<C-e>', { buffer = bufnr })
    vim.keymap.del('n', '<C-t>', { buffer = bufnr })
    vim.keymap.del('n', '<C-k>', { buffer = bufnr })
    vim.keymap.del('n', '<C-]>', { buffer = bufnr })
    vim.keymap.del('n', '<Tab>', { buffer = bufnr })
    vim.keymap.del('n', '[e', { buffer = bufnr })
    vim.keymap.del('n', ']e', { buffer = bufnr })
    vim.keymap.del('n', 'g?', { buffer = bufnr })
    vim.keymap.del('n', 'gy', { buffer = bufnr })
    vim.keymap.del('n', 'o', { buffer = bufnr })
    vim.keymap.del('n', 'O', { buffer = bufnr })
    vim.keymap.del('n', '<2-RightMouse>', { buffer = bufnr })
    vim.keymap.del('n', '<C-r>', { buffer = bufnr })
    vim.keymap.del('n', 'I', { buffer = bufnr })
    vim.keymap.del('n', 'S', { buffer = bufnr })
    vim.keymap.del('n', 'B', { buffer = bufnr })
    vim.keymap.del('n', 'U', { buffer = bufnr })
    vim.keymap.del('n', 'W', { buffer = bufnr })
    vim.keymap.del('n', '[c', { buffer = bufnr })
    vim.keymap.del('n', ']c', { buffer = bufnr })
end


require("nvim-tree").setup {
    disable_netrw = true,
    hijack_cursor = true,
    update_focused_file = {
        enable = true,
    },
    diagnostics = {
        enable = true,
        debounce_delay = 1000,
        show_on_dirs = true,
        show_on_open_dirs = false,
    },
    modified = {
        enable = true,
        show_on_open_dirs = false,
    },
    on_attach = remap,
    view = {
        relativenumber = true,
    },
    renderer = {
        full_name = true,
        highlight_git = true,
        highlight_modified = "all",
        indent_width = 2,
    },
    live_filter = {
        prefix = "> ",
    },
    ui = {
        confirm = {
            remove = true,
            trash = true,
        },
    },
}
