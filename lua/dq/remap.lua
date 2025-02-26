vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>n', vim.cmd.Ex)
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('v', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<PageUp>', ':bn<CR>')
vim.keymap.set('n', '<PageDown>', ':bp<CR>')
--vim.keymap.set('n', '<leader>t', ':TagbarToggle<CR>')
vim.keymap.set('n', 'ss', ':noh<CR>')
--vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
vim.keymap.set("n", "<space>fn", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")



--local ls = require("luasnip")

--vim.keymap.set({ "i", "s" }, "<Tab>", function()
--if ls.jumpable(1) then ls.jump(1) end
--end, { silent = true })

--vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
--if ls.jumpable(-1) then ls.jump(-1) end
--end, { silent = true })
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
	mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
			if luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			elseif cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
	},
})
