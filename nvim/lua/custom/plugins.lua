---- Plugins list ----

return {
    -- Color Scheme
    {
        'EdenEast/nightfox.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme carbonfox]])
        end,
    },

    -- File Tree
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- Language Server Protocol + Autocompletion
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
        init = function()
            vim.g.lsp_zero_extend_cmp = 0
            vim.g.lsp_zero_extend_lspconfig = 0
        end,
    },
    {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = 'L3MON4D3/LuaSnip',
    },
    {
        'neovim/nvim-lspconfig',
        cmd = {'LspInfo', 'LspInstall', 'LspStart'},
        event = {'BufReadPre', 'BufNewFile'},
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
            {'williamboman/mason-lspconfig.nvim'},
        },
    },

    -- Syntax Highlight
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
    },

    -- Tabs
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- Status Line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- Which Key
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },

    -- Folds
    {
        'kevinhwang91/nvim-ufo',
        dependencies = 'kevinhwang91/promise-async',
    },

    -- Indent Lines
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {}
    },

    -- Auto Pairs
    {
	    'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {},
    },

    -- Word Highlight
    {
        'RRethy/vim-illuminate',
    },

    -- Comment
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },

    -- Comment Marks
    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {},
    },

    -- Terminal
    {
        'NvChad/nvterm',
        opts = {},
    },

    -- Problems
    {
        'folke/trouble.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {},
    },

    -- Fuzzy Finder
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- Undo Tree
    {
        'mbbill/undotree',
    },

    -- Git
    {
        'NeogitOrg/neogit',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'sindrets/diffview.nvim',
            'ibhagwan/fzf-lua',
        },
        config = true,
    },

    {
        'lewis6991/gitsigns.nvim',
        opts = {},
    },

    -- Markdown Preview
    {
        'iamcco/markdown-preview.nvim',
        cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
        ft = { 'markdown' },
        build = function() vim.fn["mkdp#util#install"]() end,
        run = function() vim.fn["mkdp#util#install"]() end,
    },

    -- Discord Rich Presence
    {
        'andweeb/presence.nvim',
    },
}
