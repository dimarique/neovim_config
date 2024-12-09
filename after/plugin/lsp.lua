--local lsp = require('lsp-zero')
--lsp.preset('recommended')

--lsp.setup()

local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.configure('lua_ls', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }, -- Указание, что vim является глобальной переменной
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true), -- Подключение стандартных файлов Neovim
				checkThirdParty = false,                   -- Отключение предупреждений о сторонних библиотеках
			},
			telemetry = {
				enable = false, -- Отключение телеметрии
			},
		},
	},
})

lsp.setup()

require('lspconfig').ltex.setup {
	cmd = { "ltex-ls" },
	filetypes = { "markdown", "text", "tex", "vimwiki", "wiki" },
	settings = {
		ltex = {
			language = "de",
			diagnosticSeverity = "information",
			additionalRules = {
				enablePickyRules = true,
				motherTongue = "de"
			},
		},
	},
}
