vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>n', vim.cmd.Ex)
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('v', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')
vim.keymap.set('n', '<PageUp>', ':bn<CR>')
vim.keymap.set('n', '<PageDown>', ':bp<CR>')
vim.keymap.set('n', '<leader>t', ':TagbarToggle<CR>')
vim.keymap.set('n', 'ss', ':noh<CR>')
