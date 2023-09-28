-- Use :TSInstall <lang> to install parser.
-- It should auto install missing languages.

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "lua", "cpp", "rust", "python", "javascript" },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
    },
}
