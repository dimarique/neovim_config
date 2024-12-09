require('lualine').setup({
	options = {
		theme = 'auto',                          -- Автоматически использовать тему Neovim
		section_separators = '',                 -- Убрать разделители между секциями
		component_separators = '|',              -- Разделитель между компонентами
		disabled_filetypes = { 'NvimTree', 'packer' }, -- Отключить в указанных буферах
		--theme = vim.o.background == 'dark' and 'nord' or 'solarized_light',
	},
	tabline = {
		lualine_a = { 'buffers' }, -- Показывает список буферов
		--lualine_z = { 'tabs' }, -- Показывает вкладки
	},
	--sections = {
	--lualine_x = { 'diagnostics', 'encoding', 'fileformat', 'filetype' },
	--},

})
