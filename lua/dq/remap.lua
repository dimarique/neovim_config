local ls = require("luasnip")

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



vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })

vim.keymap.set("n", "<A-Right>", ":vertical resize +5<CR>")
vim.keymap.set("n", "<A-Left>", ":vertical resize -5<CR>")

vim.keymap.set("n", "<leader>l", function()
  vim.cmd("silent write")                                -- сохранить файл
  vim.cmd("silent !prettier --write % > /dev/null 2>&1") -- форматировать тихо
  vim.cmd("edit!")                                       -- перезагрузить буфер
end, { desc = "Format with Prettier (silent)" })


vim.keymap.set({ "i" }, "<C-K>", function() ls.expand() end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-E>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })
