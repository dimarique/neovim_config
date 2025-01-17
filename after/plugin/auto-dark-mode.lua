local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
	update_interval = 1000,
	set_dark_mode = function()
		vim.o.background = 'dark'
		vim.cmd("colorscheme everforest")
	end,
	set_light_mode = function()
		vim.o.background = 'light'
		vim.cmd("colorscheme everforest")
	end,
})
auto_dark_mode.init()
