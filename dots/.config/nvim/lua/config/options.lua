vim.opt.number = true -- show numbers on side
vim.opt.relativenumber = true -- show relative numbers
vim.opt.cursorline = true -- highlight current line number

vim.opt.tabstop = 4 -- amount of spaces that a <tab> will be
vim.opt.shiftwidth = 4 -- how much to indent by; should always be the same as tabstop
vim.opt.autoindent = true -- autoindent new lines if the previous was indented
vim.opt.expandtab = false -- use tabs when pressing <tab> instead of spaces
vim.opt.breakindent = true -- keep indent spacing when wrapping lines

vim.opt.list = true -- shows leading 'invisible characters'; config is below
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.splitbelow = true -- Split down by default when using split
vim.opt.splitright = true -- Split to the right by default when using vsplit

vim.opt.mouse = 'a' -- enable mouse *everywhere*
vim.cmd.colorscheme('sorbet')
vim.opt.ignorecase = true -- ignore case in searches and substitutions; required for smartcase to function
vim.opt.smartcase = true -- case-insensitive search when all lowercase, case-sensitive when not all lowercase
vim.opt.undofile = true -- allows for undo history over multiple sessions
vim.opt.inccommand = "nosplit" -- shows substitutions while you are typing them
vim.opt.confirm = true -- ask for confirmation when quitting an unsaved file
vim.opt.scrolloff = 5 -- keep 5 lines visible at top and bottom when scrolling
vim.opt.showmode = false -- don't show current "mode", as statusline already shows it
vim.opt.updatetime = 2000 -- time for neovim to automatically save to swap and for CursorHold (which also controls LSP symbol highlights)

vim.g.mapleader = " " -- key used for custom binds
vim.g.maplocalleader = "\\" -- key used for *local* custom binds (like in lazy.nvim)
