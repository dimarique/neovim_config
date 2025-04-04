--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {

		-- Here tag was 0.1.5
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use "nvim-tree/nvim-tree.lua"
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	-- Themes
	use 'arcticicestudio/nord-vim'
	use "f-person/auto-dark-mode.nvim"
	use 'overcache/NeoSolarized'
	use 'sainnhe/everforest'
	use 'NLKNguyen/papercolor-theme'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'nvim-tree/nvim-web-devicons'
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

			--Snippets
			{ 'L3MON4D3/LuaSnip' },

			-- Snippet Collection (Optional)
			{ 'rafamadriz/friendly-snippets' },
		}
	}
	use 'lukas-reineke/indent-blankline.nvim'
	use 'windwp/nvim-autopairs'
	use 'mhinz/vim-startify'
	use 'vimwiki/vimwiki'
	use 'brenoprata10/nvim-highlight-colors'
	use 'preservim/nerdcommenter'
	use 'xiyaowong/transparent.nvim'
	--Sets projects root folder
	--use {
	--"ahmedkhalf/project.nvim",
	--config = function()
	--require("project_nvim").setup {
	---- your configuration comes here
	---- or leave it empty to use the default settings
	---- refer to the configuration section below
	--}
	--end
	--}
	use 'amadeus/vim-convert-color-to'
	--use({
	--"jackMort/ChatGPT.nvim",
	--config = function()
	--require("chatgpt").setup({
	--})
	--end,
	--requires = {
	--"MunifTanjim/nui.nvim",
	--"nvim-lua/plenary.nvim",
	--"nvim-telescope/telescope.nvim"
	--}
	--})
end)
