local opt = vim.opt
local cmd = vim.cmd

--cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({ async = false })]]

opt.showmode = false
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.smartindent = true
opt.termguicolors = true
opt.scrolloff = 10
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.updatetime = 50
opt.colorcolumn = "80"
opt.showtabline = 2
--opt.background = 'light'
opt.autochdir = true
opt.foldmethod = 'manual'
opt.cmdheight = 1
