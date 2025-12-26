-- this is the mason config
-- see conform for formatter-specific config
-- see nvim-lint for linter-specific config

return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"basedpyright",
			"ts_ls",
			"astro",
			"svelte",
			"html",
			"cssls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				auto_update = true,
				ensure_installed = {
					-- formatters
					"black",
					"prettier",
					"ruff",
					"stylua",

					-- linters
					"jsonlint",
				},
			},
		},
		{ "j-hui/fidget.nvim", opts = {} },
	},
}
