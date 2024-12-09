vim.g.lightline = {
	--colorscheme = 'selenized_dark',
	colorscheme = 'nord',
	--colorscheme = 'PaperColor',
	active = {
		left = { { 'modified' }, { 'mode', 'paste' }, { 'readonly', 'path' } }
	},
	tabline = {
		left = { { 'buffers' } },
		right = { { 'close' } }
	},
	component_expand = {
		buffers = 'lightline#bufferline#buffers'
	},
	component_type = {
		buffers = 'tabsel'
	},
	component = {
		path = '%F'
	}
}
--vim.cmd([[
--highlight TabLine      guibg=#3b4252 guifg=#d8dee9
--highlight TabLineSel   guibg=#81a1c1 guifg=#2e3440
--highlight TabLineFill  guibg=#2e3440 guifg=#2e3440
--]])
