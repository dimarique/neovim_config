vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
local git_blame = require('gitblame')

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
            return { bg = '#FF0000' }
          end
        end
      },
      'diff'
    },

    lualine_c = {
      'diagnostics',
      {
        git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available
      }
    },

    lualine_x = {
      {
        'filename',
        path = 3,
      }
    },
    lualine_y = {},
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
