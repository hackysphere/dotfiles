vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4 -- amount of spaces that a <tab> will be
vim.opt.shiftwidth = 4 -- how much to indent by; should always be the same as tabstop
vim.opt.autoindent = true -- autoindent new lines if the previous was indented
vim.opt.expandtab = false -- use tabs when pressing <tab> instead of spaces

vim.opt.mouse = 'a'
vim.cmd.colorscheme('sorbet')
vim.opt.smartcase = true -- case-insensitive search when all lowercase, case-sensitive when not all lowercase
vim.opt.undofile = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
