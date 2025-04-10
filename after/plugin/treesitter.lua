require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "html", "javascript", "typescript", "lua", "vim", "help" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		disable = { "c", "rust" },
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
	textobjects = {
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]t"] = "@tag.outer",
			},
			goto_previous_start = {
				["[t"] = "@tag.outer",
			},
		},
	},

}
