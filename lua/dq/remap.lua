vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>n', vim.cmd.Ex)
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('v', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<PageUp>', ':bn<CR>')
vim.keymap.set('n', '<PageDown>', ':bp<CR>')
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { silent = true })
vim.keymap.set('n', 'ss', ':noh<CR>')
vim.keymap.set("n", "<space>fn", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
