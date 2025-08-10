require('telescope').load_extension('projects')
local builtin = require('telescope.builtin')

-- 🔍 Поиск файлов
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })

-- 🔍 Поиск по содержимому
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep' })

-- 📄 Открытые буферы
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })

-- 🧠 Определения символов
vim.keymap.set('n', '<leader>fd', function()
  builtin.lsp_definitions({
    show_line = false,
    layout_strategy = 'vertical',
    layout_config = {
      preview_height = 0.6,
    },
  })
end, { desc = 'LSP Definitions (Telescope)' })

-- 🧠 Переход к определению (альтернатива gd)
vim.keymap.set('n', 'gd', function()
  builtin.lsp_definitions({
    show_line = false,
    layout_strategy = 'vertical',
    layout_config = {
      preview_height = 0.6,
    },
  })
end, { desc = 'Go to Definition (Telescope)' })

-- 🧠 Переход к объявлению
vim.keymap.set('n', 'gD', function()
  builtin.lsp_type_definitions({
    layout_strategy = 'vertical',
    layout_config = {
      preview_height = 0.6,
    },
  })
end, { desc = 'Go to Type Definition (Telescope)' })

-- 🧠 Переход к реализации
vim.keymap.set('n', 'gi', function()
  builtin.lsp_implementations({
    layout_strategy = 'vertical',
    layout_config = {
      preview_height = 0.6,
    },
  })
end, { desc = 'Go to Implementation (Telescope)' })

-- 🧠 Найти ссылки на символ
vim.keymap.set('n', 'gr', function()
  builtin.lsp_references({
    layout_strategy = 'vertical',
    layout_config = {
      preview_height = 0.6,
    },
  })
end, { desc = 'Find References (Telescope)' })

-- 🧠 Документация по символу
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = 'Document Symbols' })

-- Telescope projects integration
vim.keymap.set('n', '<leader>fp', function()
  require('telescope').extensions.projects.projects({})
end, { desc = 'Projects' })
