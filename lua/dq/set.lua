local opt = vim.opt
local cmd = vim.cmd

--cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({ async = false })]]

opt.showmode = false
--opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = false
opt.smartindent = true
opt.termguicolors = true
opt.scrolloff = 10
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.updatetime = 50
--opt.colorcolumn = "100"
opt.showtabline = 2
--opt.background = 'light'
opt.autochdir = true
opt.foldmethod = 'manual'
opt.cmdheight = 1
opt.linebreak = true
opt.completeopt = { "menu", "menuone", "noselect" }
