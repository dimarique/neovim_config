--vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
--vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formating_sync()]]
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
vim.cmd [[autocmd ColorScheme * call lightline#init()]]
vim.cmd.noshowmode = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
--vim.opt.softtab = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.showtabline = 2
--vim.opt.background = 'light'
vim.opt.cursorline = true
vim.opt.autochdir = true
