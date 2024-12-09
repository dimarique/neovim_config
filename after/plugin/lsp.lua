local lsp = require('lsp-zero')
lsp.preset('recommended')

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
