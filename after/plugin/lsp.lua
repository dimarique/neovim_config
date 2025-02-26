local lsp = require('lsp-zero')
local cmp = require('cmp')

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

--[[
   [lsp.configure('emmet_ls', {
   [    capabilities = {
   [        textDocument = {
   [            completion = {
   [                completionItem = {
   [                    snippetSupport = false
   [                }
   [            }
   [        }
   [    }
   [})
   ]]


cmp.setup({
	completion = {
		keyword_length = 2, -- Предлагать после 2 символов (можно увеличить)
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'buffer', keyword_length = 5 }, -- Буферный ввод будет менее приоритетным
	}),
})

--[[
   [lsp.setup_nvim_cmp({
   [    sources = {
   [        { name = 'nvim_lsp' },
   [        { name = 'luasnip' },
   [    }
   [})
   ]]

lsp.setup()

vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	callback = function()
		vim.diagnostic.open_float(nil, { focusable = false })
	end,
})
