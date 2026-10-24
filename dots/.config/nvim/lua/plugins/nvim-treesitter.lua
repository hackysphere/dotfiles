-- TODO: eventually figure out how to do autoinstalls of new parsers

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local TS = require('nvim-treesitter')

		TS.install({
			"bash",
			"fish",
			"nix",

			"lua",
			"python",
			"c",
			"go",
			"gomod",
			"sql",
			"kotlin",

			"html",
			"html_tags",
			"css",
			"javascript",
			"typescript",
			"jsx",
			"json",
			"svelte",

			"comment",
			"markdown",
			"markdown_inline",

			"hyprlang",
			"caddy",
			"dockerfile",
			"ini",
			"yaml",
			"kdl",
			"kitty",
		})

		vim.api.nvim_create_autocmd('FileType', {
			desc = "Set up Treesitter plugin features",
			group = vim.api.nvim_create_augroup('treesitter-features', { clear = true }),
			pattern = TS.get_installed(), -- get installed languages and set that as the "pattern"
			callback = function()
				-- start treesitter
				vim.treesitter.start()

				-- enable autofold
				vim.o.foldmethod = 'expr'
				vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
				vim.o.foldlevel = 99 -- make folds open when opening new file

				-- indentation (experimental)
				-- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
