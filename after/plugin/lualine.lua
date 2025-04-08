--local function buffer_word_and_char_count()
--local wc = vim.fn.wordcount()
--return string.format("%d W. %d Z.", wc.words, wc.chars)
--end

require('lualine').setup({
	options = {
		theme = 'auto',
		section_separators = '',
		component_separators = '',
		disabled_filetypes = { 'NvimTree', 'packer', 'startify' },
		refresh = { statusline = 1000 },
	},
	sections = {
		lualine_a = { 'mode' },

		lualine_b = {
			{
				'branch',
				color = function()
					local branch = vim.fn.systemlist('git rev-parse --abbrev-ref HEAD')[1]
					if branch == 'main' or branch == 'master' then
						return { bg = '#FF0000' } -- Красный цвет
					end
				end
			},
			'diff'
		},
		lualine_c = { 'diagnostics' },
		lualine_x = {
			{
				'filename',
				path = 3,
			}
		},
		lualine_y = {},
		--lualine_z = {
		--buffer_word_and_char_count, function() return os.date('%H:%M:%S') end
		--},
	},
	tabline = {
		lualine_a = {
			{
				'buffers',
				max_length = vim.o.columns
			}
		},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
})
