vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Package Manager
    use 'wbthomason/packer.nvim'

    -- Color Scheme
    use 'EdenEast/nightfox.nvim'

    -- File Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' }, -- optional
    }

    -- Fuzzy Finder
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Syntax Highlight
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Auto Pairs
    use {
	    'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    -- Undo Tree
    use 'mbbill/undotree'

    -- Git Plugins
    use {
        'NeogitOrg/neogit',
        requires = {
            "nvim-lua/plenary.nvim",         -- required
            "nvim-telescope/telescope.nvim", -- optional
            "sindrets/diffview.nvim",        -- optional
            "ibhagwan/fzf-lua",              -- optional
        },
        config = function() require('neogit').setup {} end
    }
    use('sindrets/diffview.nvim')

    use('tpope/vim-fugitive')
    use('lewis6991/gitsigns.nvim')

    -- Language Server Protocol + Autocompletion
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Problems
    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    -- Comment
    use 'numToStr/Comment.nvim'

    -- Which Key
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup { }
        end
    }

    -- Todos
    use {
        'folke/todo-comments.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- Buffer Line (tabs)
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Word Highlight
    use {'RRethy/vim-illuminate'}

    -- Discord
    use {'andweeb/presence.nvim'}

    -- Clipboard
    use {'matveyt/neoclip'}

    -- Markdown Preview
    use {"iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end, }

    -- Nvterm
    use 'NvChad/nvterm'

end)
