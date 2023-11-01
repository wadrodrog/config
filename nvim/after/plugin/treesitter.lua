require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'bash', 'cpp', 'css', 'gitignore', 'html', 'javascript', 'json5',
        'lua', 'markdown', 'markdown_inline', 'python', 'rust',
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
