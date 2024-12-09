local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
	update_interval = 1000,
	set_dark_mode = function()
		vim.api.nvim_set_option('background', 'dark')
		vim.cmd("colorscheme nord")
		vim.g.lightline = { colorscheme = 'nord' }
		vim.cmd("redrawstatus")
	end,
	set_light_mode = function()
		vim.api.nvim_set_option('background', 'light')
		vim.cmd("colorscheme NeoSolarized")
		--vim.g.lightline = { colorscheme = 'papercolor' }
		vim.cmd("redrawstatus")
	end,
})
auto_dark_mode.init()
