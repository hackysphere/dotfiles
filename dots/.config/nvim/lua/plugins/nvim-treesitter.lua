-- TODO: eventually figure out how to do autoinstalls of new parsers

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local TS = require('nvim-treesitter')

		TS.install({
			"lua",
			"bash",
			"python",
			"c",
			"html",
			"javascript",
			"typescript",
			"json",
			"jsonc",
			"markdown",
			"markdown_inline",
			"yaml",
		})

		vim.api.nvim_create_autocmd('FileType', {
			desc = "Set up Treesitter plugin features",
			group = vim.api.nvim_create_augroup('treesitter-features', { clear = true }),
			pattern = TS.get_installed(), -- get installed languages and set that as the "pattern"
			callback = function()
				-- start treesitter
				vim.treesitter.start()

				-- enable autofold
				vim.opt.foldmethod = 'expr'
				vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
				vim.opt.foldlevel = 99 -- make folds open when opening new file

				-- indentation (experimental)
				-- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
