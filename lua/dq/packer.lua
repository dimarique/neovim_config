vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    --   use 'rmehri01/onenord.nvim'
    use 'sainnhe/everforest'
    --    use 'ayu-theme/ayu-vim'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use 'majutsushi/tagbar'
    use 'itchyny/lightline.vim'
    use 'mengelbrecht/lightline-bufferline'
    use 'mattn/emmet-vim'
    use 'windwp/nvim-autopairs'
    use 'mhinz/vim-startify'
    use 'vimwiki/vimwiki'
    use 'preservim/nerdcommenter'
end)