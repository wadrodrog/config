local lsp_zero = require('lsp-zero')
lsp_zero.extend_cmp()

local cmp = require('cmp')
cmp.setup({
    formatting = lsp_zero.cmp_format(),
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-c>'] = cmp.mapping.abort(),
        ['<Up>'] = cmp.mapping.abort(),
        ['<Down>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
    })
})

lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason-lspconfig').setup({
    ensure_installed = {
        'bashls', 'clangd', 'cssls', 'html', 'quick_lint_js', 'jsonls',
        'lua_ls', 'marksman', 'pyright', 'rust_analyzer',
    },
    handlers = {
        lsp_zero.default_setup,
    }
})
