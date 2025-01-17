local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.configure('lua_ls', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

lsp.setup()

vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	callback = function()
		vim.diagnostic.open_float(nil, { focusable = false })
	end,
})

--require('lspconfig').ltex.setup {
--cmd = { "ltex-ls" },
--filetypes = { "markdown", "text", "tex", "vimwiki", "wiki" },
--settings = {
--ltex = {
--language = "de",
--diagnosticSeverity = "information",
--additionalRules = {
--enablePickyRules = true,
--motherTongue = "de"
--},
--},
--},
--}
