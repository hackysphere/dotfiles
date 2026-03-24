vim.o.number = true -- show numbers on side
vim.o.relativenumber = true -- show relative numbers
vim.o.cursorline = true -- highlight current line number

vim.o.tabstop = 4 -- amount of spaces that a <tab> will be
vim.o.shiftwidth = 4 -- how much to indent by; should always be the same as tabstop
vim.o.autoindent = true -- autoindent new lines if the previous was indented
vim.o.expandtab = false -- use tabs when pressing <tab> instead of spaces
vim.o.breakindent = true -- keep indent spacing when wrapping lines

vim.o.list = true -- shows leading 'invisible characters'; config is below
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.o.splitbelow = true -- Split down by default when using split
vim.o.splitright = true -- Split to the right by default when using vsplit

-- spellcheck
vim.o.spelllang = 'en_us'
vim.o.spell = true

vim.o.mouse = 'a' -- enable mouse *everywhere*
vim.cmd.colorscheme('sorbet')
vim.o.ignorecase = true -- ignore case in searches and substitutions; required for smartcase to function
vim.o.smartcase = true -- case-insensitive search when all lowercase, case-sensitive when not all lowercase
vim.o.undofile = true -- allows for undo history over multiple sessions
vim.o.inccommand = "nosplit" -- shows substitutions while you are typing them
vim.o.confirm = true -- ask for confirmation when quitting an unsaved file
vim.o.scrolloff = 5 -- keep 5 lines visible at top and bottom when scrolling
vim.o.showmode = false -- don't show current "mode", as statusline already shows it
vim.o.updatetime = 2000 -- time for neovim to automatically save to swap and for CursorHold (which also controls LSP symbol highlights)

vim.g.mapleader = " " -- key used for custom binds
vim.g.maplocalleader = "\\" -- key used for *local* custom binds (like in lazy.nvim)
