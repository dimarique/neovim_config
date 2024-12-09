vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		-- here tag was 0.1.5
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'arcticicestudio/nord-vim'
	use "f-person/auto-dark-mode.nvim"
	--	use 'rmehri01/onenord.nvim'
	--	use 'ayu-theme/ayu-vim'
	use 'overcache/NeoSolarized'
	--use 'sainnhe/everforest'
	use 'NLKNguyen/papercolor-theme'
	--use 'xiyaowong/transparent.nvim'


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
	use 'lukas-reineke/indent-blankline.nvim'
	--use 'majutsushi/tagbar'
	use 'itchyny/lightline.vim'
	use 'mengelbrecht/lightline-bufferline'
	-- use 'mattn/emmet-vim'
	use 'windwp/nvim-autopairs'
	use 'mhinz/vim-startify'
	use 'vimwiki/vimwiki'
	use 'brenoprata10/nvim-highlight-colors'
	use 'preservim/nerdcommenter'
	use 'amadeus/vim-convert-color-to'
	use 'nathanaelkane/vim-indent-guides'
	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		}
	})
end)
